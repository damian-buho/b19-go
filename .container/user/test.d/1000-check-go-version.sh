#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

set -eou pipefail

ACTUAL=$(get-go-version)
EXPECTED=$(decomment < /deps/go/version.deps)

b19-assert equals "GO" "${EXPECTED}" "${ACTUAL}"
