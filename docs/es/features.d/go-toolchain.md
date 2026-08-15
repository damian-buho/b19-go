<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Cadena de herramientas Go desde el tarball upstream

- Go se instala desde el tarball oficial upstream (no desde APT), fijado a una versión concreta con verificación SHA-512.
- Los disparadores de los escáneres de vulnerabilidades (archivos PEM de prueba embebidos) se eliminan del árbol del código fuente de Go.
- La telemetría de Go está desactivada por defecto.
- Incluye `git` para la resolución de módulos y `binutils` para el enlazado.
