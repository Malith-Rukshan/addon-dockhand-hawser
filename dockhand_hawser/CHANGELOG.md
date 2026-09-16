# Changelog

All notable changes to this add-on are documented here. The add-on version
tracks the pinned upstream [Hawser](https://github.com/Finsys/hawser) release.

## 0.2.48

- Update bundled upstream Hawser to `v0.2.48` (was `v0.2.46`).

  Upstream release notes:

  > ## Changelog
  > * 706fce17b0bf9fbb2fb2a04e67e163e51578f79c add docker attach terminal support to the edge agent
  > * 74e158c8b60d0bdd40279ab777480458373f5125 docker-compose=5.5.0-r5
  > * cdf530ea3822f73b19a3084c9325f3db96c79f4e feat(config): support TOKEN_FILE for Docker and Kubernetes secrets (#67)
  > 

## 0.2.47

- Update bundled upstream Hawser to `v0.2.47` (was `v0.2.46`).

  Upstream release notes:

  > ## Changelog
  > * a6b5e2498a444fbea7e0c4e5c41ce41c89160dc1 Remove dead exec tunnel implementation
  > * 274e16a561b746c1e1bdd6f28c1958c6861dc73c Set a token in the standard-mode install config
  > * 59406fc200d5931aa3e385cc890d67b320eb1098 build: align docker-compose pin with dockhand (5.1.4-r5 -> 5.5.0-r0)
  > * 668bc8f7add4f4981aac26a7a8083d8849f95a11 build: bump docker-compose to 5.5.0-r2 and add git to the runtime images
  > * 09a4ccf98540ca4d471fd545c68fb0f6424d43ff build: use ln -sf for the dev image compose-plugin symlink
  > * d0e8d624e5ae1f1e423dbc2d6240d68ee8590063 feat(compose): emit output lines as they arrive and fall back to stderr
  > * 56540515db95e064183fb5566a07312ab0ace710 feat(edge): stream compose output lines when the caller asks for them
  > * 0a55c1c63da50ddae178fccca6e5b4a9960d2100 fix(compose): teeLines bufio.Reader avoids >1MB-line deadlock (review of #99)
  > * 9967fa8cd174c4421d749b52955a036ae4164da2 fix(security): restrict /etc/hawser/config to 0600 (#82)
  > * 773ad7a7af1b55a42e77581faab29d91d8cb6dbd fix: explain compose failures caused by our own timeout, not the compose run itself
  > * a07b6c70bbc45c100f55084510b2a800fc72b070 fix: give compose operations their own timeout instead of RequestTimeout
  > * 79cb8f104dbff3b29e3994b6299fa8d079170a48 test(compose): cover build output landing on stdout (counter-test 0)
  > * 50659bbc695fcf5e0fc275c6bcfb13efbbeea712 test(compose): cover teeLines' close() flushing the final unterminated line
  > * b8ff4282775fbce338e6afedceb450662d73490b test(compose): gate the docker-dependent build test behind an env switch
  > 

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
