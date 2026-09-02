<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Binary stripping with size reporting

- Compiled binaries are stripped in-place with before/after size measurement logged at build time.
- Removes debug symbols and unnecessary metadata to reduce final image size.
- Size savings are visible immediately, making it easy to track the impact of stripping.
