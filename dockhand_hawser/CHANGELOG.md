# Changelog

All notable changes to this add-on are documented here. The add-on version
tracks the pinned upstream [Hawser](https://github.com/Finsys/hawser) release.

## 0.2.43

- Update bundled upstream Hawser to `v0.2.43` (was `v0.2.42`).

  Upstream release notes:

  > ## Changelog
  > 
  > - Bump Go to 1.26 in go.mod, CI workflows, and Dockerfile.dev
  > - Bump docker-compose to 5.1.4-r0 in Dockerfile
  > - Expand token security documentation with generation examples (https://github.com/Finsys/hawser/issues/60)
  > - Remove unused edge /info endpoint

## 0.2.42.1

- Fix the port shown on the ingress WebUI page (was hardcoded to `2375`, now
  reflects the configured `port` value).

## 0.2.42
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
