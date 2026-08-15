<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Збірки, оптимізовані під архітектуру

- `GOAMD64=v3` цілиться в базовий рівень x86-64-v3 (AVX2, BMI2, FMA).
- `GOARM64=v8.1,lse,crypto` цілиться в ARMv8.1 із системними розширеннями великого масштабу та криптографічними розширеннями.
- `GORISCV64=rva20u64` цілиться в профіль RISC-V RVA20U64.
- Усі три профілі орієнтовані на сучасне залізо, а не на найстаріше сумісне.
