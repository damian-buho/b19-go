<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Cross-compilation for multiple architectures

- Cross-compile for multiple architectures from a single builder image without separate build environments.
- Default target set includes amd64, arm64, and riscv64; overridable per downstream consumer.
- Produces architecture-suffixed binaries in a single pass, ready for multi-arch image publishing.
