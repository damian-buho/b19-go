<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Cachés persistentes de compilación y módulos de Go

- `GOCACHE` y `GOMODCACHE` se montan como cachés persistentes de BuildKit, que sobreviven de una compilación a otra en el mismo host.
- Las compilaciones repetidas reutilizan los paquetes compilados y los módulos descargados en lugar de volver a obtenerlos.
- La caché es compartida (modo locked) para permitir un acceso concurrente seguro.

<!-- textlint-enable -->
