<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Persistent Go build and module caches

- Go build artifacts and downloaded modules persist across builds, so repeated builds skip recompilation and re-fetching.
- Cache is shared across concurrent builds in locked mode for safe parallel access.
