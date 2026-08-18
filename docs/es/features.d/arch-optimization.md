<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Compilaciones optimizadas por arquitectura

- `GOAMD64=v3` apunta al perfil base x86-64-v3 (AVX2, BMI2, FMA).
- `GOARM64=v8.1,lse,crypto` apunta a ARMv8.1 con extensiones large system y criptográficas.
- `GORISCV64=rva20u64` apunta al perfil RISC-V RVA20U64.
- Los tres perfiles apuntan a hardware moderno en lugar del silicio más antiguo compatible.

<!-- textlint-enable -->
