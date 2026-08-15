<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

<!-- textlint-disable terminology -->

[English](../../README.md) · [Español](../es/README.md)

# B19/Go

Go toolchain from upstream tarball in b19-style

[![Stand with Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://damian-buho.github.io/support-ukraine/) [![License](https://img.shields.io/static/v1?label=license&message=MIT&color=4c1&style=flat-square)](LICENSE) ![Commit style](https://img.shields.io/static/v1?label=commits&message=conventional&color=blue&style=flat-square) ![Workflow](https://img.shields.io/static/v1?label=workflow&message=git-flow&color=blue&style=flat-square) ![Versioning](https://img.shields.io/static/v1?label=versioning&message=semantic&color=blue&style=flat-square) [![PRs welcome](https://img.shields.io/static/v1?label=PRs&message=welcome&color=4c1&style=flat-square)](CONTRIBUTING.md) [![Citation](https://img.shields.io/static/v1?label=citation&message=cff&color=blue&style=flat-square)](CITATION.cff) [![REUSE compliance](https://api.reuse.software/badge/codeberg.org/b19/go)](https://api.reuse.software/info/codeberg.org/b19/go)

![Project status](https://img.shields.io/static/v1?label=status&message=maintained&color=1d63ed&style=flat-square) [![Last commit](https://img.shields.io/gitea/last-commit/b19/go?gitea_url=https://codeberg.org&style=flat-square)](https://codeberg.org/b19/go)

[![Build status on kiota.ch](https://kiota.ch/b19/go/badges/workflows/published.yaml/badge.svg)](https://kiota.ch/b19/go/actions)

## Можливості

- Architecture-optimized builds
- Binary stripping with size reporting (b19-strip)
- Cross-compilation for multiple architectures
- Persistent Go build and module caches
- Declarative Go package installation (go.deps)
- Go toolchain from upstream tarball
- CGO-disabled static builds by default
- Persistent APT cache across builds
- Service process management with log routing (b19-exec)
- Cached artifact downloads with integrity verification (b19-fetch)
- Timed command execution with failure reporting (b19-run)
- Run-once initialization (bootstrap.d)
- Modular build hooks (build.d)
- Automatic CPU count detection (NUMPROCS)
- Declarative dependency management (b19-deps)
- Pluggable startup system (entrypoint.d)
- Feature toggles for all subsystems
- Built-in health monitoring (healthcheck.d)
- Multilingual shell output (b19-i18n)
- Image lineage tracking
- Structured, level-filtered logging (b19-log)
- Non-root container by default
- Air-gapped / offline build and runtime support
- Runtime overlay injection
- Reproducible base image (pinned by digest)
- Port validation
- Unified lifecycle runner family
- Docker secrets auto-loading (secrets)
- Interactive shell hooks (shell.d)
- Graceful signal handling
- Jinja2 configuration templates (minijinja-cli)
- Built-in test framework (test.d)
- Pre-installed utility tools
- XDG Base Directory paths

Див. [FEATURES.md](../../FEATURES.md), щоб переглянути повний перелік.

## Що надає цей проєкт

- **Образ контейнера** `ghcr.io/damian-buho/b19/go:latest`
- **Образ контейнера** `docker.io/damianbuho/b19-go:latest`

## Підтримувані платформи

`linux/amd64`, `linux/arm64`, `linux/riscv64`

## Встановлення

Завантажте опублікований образ контейнера:

```sh
docker pull ghcr.io/damian-buho/b19/go:latest
docker pull docker.io/damianbuho/b19-go:latest
```

Якщо наведені вище реєстри недоступні, завантажте з джерела:

```sh
docker pull kiota.ch/b19/go:latest
```

## Використання

Побудуйте на основі цього образу:

```dockerfile
FROM ghcr.io/damian-buho/b19/go:latest
FROM docker.io/damianbuho/b19-go:latest
```

Для рекомендованого багатоетапного шаблону та системи хуків збірки (build.d) створіть похідний проєкт за допомогою `b19/scripts/scaffold.sh` з [m6e/b19](https://kiota.ch/m6e/b19).

## Збирання

- [Довідник із Makefile](../MAKEFILE.md)

Точки входу конвеєра:

- `make analyze` — Run the heavy analysis sweep (mutation testing, benchmarks)
- `make audited` — Re-scan the pinned dependencies and published artifacts for new vulnerabilities
- `make check-outdated` — Report every pinned dependency that lags upstream
- `make ready-to-publish` — Run the pseudo-CI pipeline locally — build, test and scan, without publishing

Виконайте `make` без аргументів для типової цілі; виконайте `make help`, щоб переглянути всі цілі.

Для локального циклу розробки `make dev-container` піднімає dev-container.

## Політики

- [Як зробити внесок](CONTRIBUTING.md)
- [Політика безпеки](SECURITY.md)
- [Як отримати підтримку](SUPPORT.md)
- [Кодекс поведінки](CODE_OF_CONDUCT.md)

## Посилання

- [Специфікація Projectfile](https://projectfile.org)
- [B19/Go on Codeberg](https://codeberg.org/b19/go)
- [B19/Go on GitHub](https://github.com/damian-buho/b19-go)
- [B19/Go on kiota.ch](https://kiota.ch/b19/go)
- [Issues on Codeberg](https://codeberg.org/b19/go/issues)
- [Issues on GitHub](https://github.com/damian-buho/b19-go/issues)

## Ліцензія

Цей проєкт ліцензовано на умовах MIT — див. файл [LICENSE](LICENSE) для подробиць.

*Згенеровано з projectfile ([дізнатися як](https://projectfile.org/how-to/readme))*
<!-- textlint-enable -->
