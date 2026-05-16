# Changelog

## 0.2.42.1

- Fix the port shown on the ingress WebUI page (was hardcoded to `2375`, now
  reflects the configured `port` value).

## 0.2.42

- Initial release. Bundles upstream Hawser `v0.2.42`.
- Runtime-download model: binary fetched and SHA256-verified on first start,
  cached at `/data/hawser/<version>/`.
- Supports Edge and Standard modes.
- Architectures: `amd64`, `aarch64`, `armv7`.
- Ingress sidebar entry with a small status page; AppArmor profile included.
- Standard mode listens on `2376/tcp` by default (matches Hawser's and
  Dockhand's defaults).
- Requires **Protection mode** to be turned off so the agent can reach the
  host's Docker socket.
