#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT


  eval "$(b19-resolve-dep go "${TARGETARCH}")"

  b19-fetch "GO" "${M6E_UPSTREAM__URL}" "${M6E_UPSTREAM__FILE}" "${M6E_UPSTREAM__HASH}"

  b19-run "GO" "$(_p "Extract %s" "${B19_TEMP_PATH}/${M6E_UPSTREAM__FILE}")" --     \
    tar --directory "${B19_PREFIX}"                                                 \
        --extract                                                                   \
        --file "${B19_TEMP_PATH}/${M6E_UPSTREAM__FILE}"                             \
        --strip-components 1                                                        \
        --use-compress-program pigz

  # Remove embedded test fixtures that trigger vulnerability scanners
  _PEM="${B19_PREFIX}/src/crypto/x509/platform_root_key.pem"
  if [[ -f "${_PEM}" ]]; then
    b19-log info "GO" "$(_p "Strip vulnerability-scanner trigger: %s" "${_PEM}")"
    rm -f "${_PEM}"
  fi

  b19-run "GO" "$(_p "Turn off telemetry")" --      \
    go telemetry off
