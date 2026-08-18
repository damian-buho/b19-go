<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Крос-компіляція для кількох архітектур

- `B19_GO_CROSS_ARCHES` визначає список цільових архітектур (типово: amd64, arm64, riscv64).
- Пакети зі списку `build.go.deps` крос-компілюються для кожної архітектури зі списку, даючи вихідні файли `<binary>.<arch>`.
- Уможливлює виробництво мультиархітектурних бінарників за один прохід з одного builder-образа (наприклад, `dasel.amd64`, `dasel.arm64`, `dasel.riscv64` з однієї amd64-збірки).
- Список цільових архітектур може перевизначатися кожним похідним споживачем.

<!-- textlint-enable -->
