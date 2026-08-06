<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Declarative Go package installation (go.deps)

- Go packages listed in `go.deps` are automatically installed via `go install` during the build.
- Supports per-package environment variable overrides (e.g., build tags, CGO flags).
- Declarative: add a package path to the file, rebuild, and the tool is available in the image.
- The dep list is consumed and removed after installation (not inherited downstream).
