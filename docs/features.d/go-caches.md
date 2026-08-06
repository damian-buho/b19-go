<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Persistent Go build and module caches

- `GOCACHE` and `GOMODCACHE` are mounted as BuildKit persistent caches, surviving across builds on the same host.
- Repeated builds reuse compiled packages and downloaded modules instead of re-fetching.
- Cache is shared (locked mode) to allow safe concurrent access.
