<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Static builds by default

- Binaries are built without C library dependencies by default, so they work on any Linux system regardless of distro or libc version.
- No CGO configuration needed — static linking is the default.
