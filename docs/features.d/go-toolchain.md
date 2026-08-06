<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Go toolchain from upstream tarball

- Go installed from the official upstream tarball (not from APT), pinned to a specific version with SHA-512 verification.
- Vulnerability-scanner triggers (embedded test PEM files) are stripped from the Go source tree.
- Go telemetry is disabled by default.
- Includes `git` for module resolution and `binutils` for linking.
