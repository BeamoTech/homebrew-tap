# BeamoINT Homebrew tap

Install [Claudex](https://github.com/BeamoINT/Claudex) with:

```sh
brew install BeamoINT/tap/claudex
claudex --login
```

Claudex's automatic first-run setup installs Codex and Claude Code when they
are missing. The formula installs the Node.js and jq runtime dependencies used
by that setup.

## Beamo Flasher CLI

Install [Beamo Flasher](https://beamo.tech/flasher-download) with:

```sh
brew install BeamoINT/tap/beamo-flasher
bflash --help
```

## BrowserSSH

[BrowserSSH](https://browserssh.com) is now a personal browser SSH service. The old `bssh` agent client is retired; use AgentSSH below for API and MCP access. Historical release archives remain available for reference. Accounts, keys and credentials are separate between the products.

## AgentSSH

AgentSSH is a [local development archive](https://agentssh-beamo-20260920.pages.dev); its hosted service was retired. The retained CLI package is available for local/archive use:

```sh
brew install BeamoINT/tap/agentssh
agentssh --help
```

These archives do not provide access to a live AgentSSH service. Follow the AgentSSH repository's local-development instructions.
The [AgentSSH release](https://github.com/BeamoINT/homebrew-tap/releases/tag/agentssh-v0.1.1) also includes standalone TypeScript and Python SDK packages, Terraform provider binaries, and the connector Helm chart. SHA256SUMS covers every downloadable archive.
