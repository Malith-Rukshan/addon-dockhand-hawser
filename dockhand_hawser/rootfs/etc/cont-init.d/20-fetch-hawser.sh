#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

readonly API_LATEST="https://api.github.com/repos/Finsys/hawser/releases/latest"
readonly RELEASE_BASE="https://github.com/Finsys/hawser/releases/download"

version="$(bashio::config 'hawser_version')"

if [[ -z "${version}" ]] || [[ "${version}" == "latest" ]]; then
    bashio::log.info "Resolving latest Hawser release..."
    version="$(wget -q -O- "${API_LATEST}" | jq -r '.tag_name // empty')"
    [[ -n "${version}" ]] || bashio::exit.nok "Could not resolve the latest Hawser version."
fi
version="${version#v}"

case "$(uname -m)" in
    x86_64)               arch="amd64" ;;
    aarch64 | arm64)      arch="arm64" ;;
    armv7l | armv7 | arm) arch="arm" ;;
    *) bashio::exit.nok "Unsupported architecture: $(uname -m)" ;;
esac

readonly cache_dir="/data/hawser/${version}"
readonly binary="${cache_dir}/hawser"

if [[ ! -x "${binary}" ]]; then
    bashio::log.info "Downloading Hawser ${version} (${arch})..."
    mkdir -p "${cache_dir}"
    tmp="$(mktemp -d)"
    # shellcheck disable=SC2064
    trap "rm -rf '${tmp}'" EXIT

    asset="hawser_${version}_linux_${arch}.tar.gz"
    url="${RELEASE_BASE}/v${version}/${asset}"

    wget -q -O "${tmp}/${asset}" "${url}" \
        || bashio::exit.nok "Failed to download ${url}"

    if wget -q -O "${tmp}/checksums.txt" "${RELEASE_BASE}/v${version}/checksums.txt"; then
        expected="$(grep -E "  ${asset}\$" "${tmp}/checksums.txt" | awk '{print $1}')"
        if [[ -n "${expected}" ]]; then
            actual="$(sha256sum "${tmp}/${asset}" | awk '{print $1}')"
            [[ "${expected}" == "${actual}" ]] \
                || bashio::exit.nok "Checksum mismatch for ${asset}."
        fi
    fi

    tar -xzf "${tmp}/${asset}" -C "${tmp}"
    [[ -f "${tmp}/hawser" ]] || bashio::exit.nok "Archive did not contain a 'hawser' binary."
    install -m 0755 "${tmp}/hawser" "${binary}"
    bashio::log.info "Hawser ${version} cached at ${binary}"
else
    bashio::log.info "Using cached Hawser ${version}"
fi

ln -sf "${binary}" /usr/local/bin/hawser

# Prune older cached versions.
for dir in /data/hawser/*/; do
    [[ -d "${dir}" ]] || continue
    if [[ "${dir%/}" != "${cache_dir}" ]]; then
        rm -rf "${dir}"
    fi
done

exit 0
