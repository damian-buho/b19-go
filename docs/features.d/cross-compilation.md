<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Cross-compilation for multiple architectures

- `B19_GO_CROSS_ARCHES` defines a list of target architectures (default: amd64, arm64, riscv64).
- Packages listed in `build.go.deps` are cross-built for every architecture in the list, producing `<binary>.<arch>` outputs.
- Enables single-pass multi-arch binary production from one builder (e.g., `dasel.amd64`, `dasel.arm64`, `dasel.riscv64` from one amd64 build).
- Target architecture list is overridable per downstream consumer.
