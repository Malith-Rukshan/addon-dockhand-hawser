# Changelog

All notable changes to this add-on are documented here. The add-on version
tracks the pinned upstream [Hawser](https://github.com/Finsys/hawser) release.

## 0.2.46

- Update bundled upstream Hawser to `v0.2.46` (was `v0.2.45`).

  Upstream release notes:

  > > [!NOTE]
  > > Hawser standard mode now requires a token when Hawser binds a non-loopback address (the default `0.0.0.0`). If a standard-mode agent has no `TOKEN` set, choose one of:
  > 
  > - set `TOKEN` (recommended — and add it to the matching environment in Dockhand), or
  > - bind locally with `BIND_ADDRESS=127.0.0.1`, or
  > - set `ALLOW_INSECURE_NO_AUTH=true` to keep the previous behavior.
  > 
  > Edge-mode agents and agents that already use a token are unaffected.
  > 
  > 
  > 
  > ## Changelog
  > * 3e5496536f551dd12f24132275905884614d5481 Refuse to start standard mode on a public bind without a token
  > 
  > 
  > 
  > 

## 0.2.45

- Update bundled upstream Hawser to `v0.2.45` (was `v0.2.44`).

  Upstream release notes:

  > ## Changelog
  > * 82a86a16e32af11e586b81adce5ca3fc0903c567 feat: hash-verified file deletion sync and stack dir cleanup (#966, #1162)
  > * 0997f7161d50e9635ef4eb10706e26dc423f34dc fix: log client disconnect in events stream at debug level
  > * f38f847ca802f864537c9e03f0cdc705ff32f715 fix: stack removal deletes only files explicitly listed by dockhand
  > * 2c1675f16b29104988a5873fbfdcd6705cf64424 fix: use ln -sf so newer docker-compose packages work
  > 

## 0.2.44
## 0.2.44

- Update bundled upstream Hawser to `v0.2.44` (was `v0.2.43`).

  Upstream release notes:

  > ## Changelog
  > * 3cbc419eee316a285d980db38ad22805199ac493 fix: use clean env for compose subprocess to prevent inherited .env override (#1113)
  > 

## 0.2.43
## 0.2.43
## 0.2.43
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
## 0.2.42.1
## 0.2.42.1
## 0.2.42.1
## 0.2.42.1
## 0.2.42.1
## 0.2.42.1
## 0.2.42.1

- Fix the port shown on the ingress WebUI page (was hardcoded to `2375`, now
  reflects the configured `port` value).

## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
## 0.2.42
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
