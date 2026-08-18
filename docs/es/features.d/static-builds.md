<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Compilaciones estáticas con CGO desactivado por defecto

- `CGO_ENABLED=0` es el valor por defecto, y produce binarios enlazados estáticamente sin dependencia de libc.
- Los binarios compilados en esta imagen funcionan en cualquier sistema Linux sin importar la biblioteca C instalada.

<!-- textlint-enable -->
