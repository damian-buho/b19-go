<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Compilación cruzada para múltiples arquitecturas

- `B19_GO_CROSS_ARCHES` define una lista de arquitecturas objetivo (por defecto: amd64, arm64, riscv64).
- Los paquetes listados en `build.go.deps` se compilan de forma cruzada para cada arquitectura de la lista, produciendo salidas `<binary>.<arch>`.
- Permite producir binarios multiarquitectura en una sola pasada desde un único builder (p. ej., `dasel.amd64`, `dasel.arm64`, `dasel.riscv64` desde una compilación amd64).
- La lista de arquitecturas objetivo puede sobrescribirse en cada consumidor derivado.

<!-- textlint-enable -->
