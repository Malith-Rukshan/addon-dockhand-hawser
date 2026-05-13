#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

mode="$(bashio::config 'mode')"

if [[ "${mode}" == "edge" ]]; then
    bashio::config.has_value 'dockhand_url' \
        || bashio::exit.nok "Edge mode requires 'dockhand_url' (e.g. wss://your-dockhand/api/hawser/connect)."
    bashio::config.has_value 'token' \
        || bashio::exit.nok "Edge mode requires 'token' (the agent token from Dockhand)."
else
    if bashio::config.has_value 'tls_cert' && ! bashio::config.has_value 'tls_key'; then
        bashio::exit.nok "tls_cert is set but tls_key is missing — both are required for TLS."
    fi
    if bashio::config.has_value 'tls_key' && ! bashio::config.has_value 'tls_cert'; then
        bashio::exit.nok "tls_key is set but tls_cert is missing — both are required for TLS."
    fi
fi

if [[ ! -s /data/agent_id ]]; then
    agent_id="$(cat /proc/sys/kernel/random/uuid)"
    echo "${agent_id}" > /data/agent_id
    bashio::log.info "Generated agent ID: ${agent_id}"
fi

stacks_dir="$(bashio::config 'stacks_dir')"
if [[ -n "${stacks_dir}" ]] && [[ ! -d "${stacks_dir}" ]]; then
    mkdir -p "${stacks_dir}"
fi
