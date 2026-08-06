<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# CGO-disabled static builds by default

- `CGO_ENABLED=0` is the default, producing statically linked binaries with no libc dependency.
- Binaries built-in this image work on any Linux system regardless of the C library installed.
