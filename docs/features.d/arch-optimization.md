<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Architecture-optimized builds

- `GOAMD64=v3` targets x86-64-v3 baseline (AVX2, BMI2, FMA).
- `GOARM64=v8.1,lse,crypto` targets ARMv8.1 with large system extensions and crypto extensions.
- `GORISCV64=rva20u64` targets the RISC-V RVA20U64 profile.
- All three profiles target modern hardware rather than oldest-compatible silicon.
