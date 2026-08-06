<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Inheritable compile-go build hooks

- Build hooks in `compile-go/` are inheritable (`*.i.sh`): Go dependency installation, cross-compilation, and dep export propagate to any downstream image using a `compile-go` stage.
- Downstream images (d9t/go-tools, o9s services) get Go tool installation and cross-build logic for free.
- Dependency files can be copied to an export directory for use in later build stages.
