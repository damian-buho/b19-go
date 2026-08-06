#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

  set -eou pipefail

  # shellcheck source=/dev/null
  . b19-i18n

  TESTDIR=$(mktemp -d)

  GO_VERSION=$(get-go-version)
  cat > "${TESTDIR}/hello.go" << 'EOF'
package main

import "fmt"

func main() {
  fmt.Println("ok")
}
EOF
  go build -o "${TESTDIR}/hello" "${TESTDIR}/hello.go"
  "${TESTDIR}/hello"
  b19-log good "GO" "$(_p "go-%s compile test passed" "${GO_VERSION}")"

  rm -rf "${TESTDIR}"
