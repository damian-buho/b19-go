<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Instalación declarativa de paquetes Go (go.deps)

- Los paquetes Go listados en `go.deps` se instalan automáticamente mediante `go install` durante la compilación.
- Admite overrides de variables de entorno por paquete (p. ej., build tags, flags de CGO).
- Declarativo: añade una ruta de paquete al archivo, recompila, y la herramienta queda disponible en la imagen.
- La lista de dependencias se consume y se elimina tras la instalación (no se hereda hacia abajo).
