#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

set -eou pipefail

work="$(mktemp --directory)"
trap 'rm --recursive --force "${work}"' EXIT

project="${work}/project"
mkdir --parents "${project}/cmd/fx"
cat > "${project}/projectfile.yaml" <<'EOF'
identity:
  name: fixture
org:
  projectfile:
    operating-system: [linux]
    architecture: [amd64, arm64, riscv64]
    artifacts:
      fx:
        kind: binary
        path: dist/fx
        command: fx
        package: cmd/fx
        version-symbol: main.stamp
        operating-system: [linux, darwin]
        exclude:
          - os: darwin
            arch: riscv64
EOF
printf 'module example.invalid/fx\n\ngo 1.21\n' > "${project}/go.mod"
printf 'package main\n\nvar stamp = "unset"\n\nfunc main() { println(stamp) }\n' > "${project}/cmd/fx/main.go"

(cd "${project}" && GITHUB_REF_NAME=1.2.3 TARGET_OS=linux TARGET_ARCH=amd64 auto-go-build)
(cd "${project}" && GITHUB_REF_NAME=1.2.3 TARGET_OS=linux TARGET_ARCH=arm64 auto-go-build)
(cd "${project}" && GITHUB_REF_NAME=1.2.3 TARGET_OS=darwin TARGET_ARCH=arm64 auto-go-build)
for asset in fx-linux-x86_64 fx-linux-aarch64 fx-darwin-arm64; do
  [[ -f "${project}/dist/${asset}" ]] || { echo "FATAL: ${asset} was not built" >&2; exit 1; }
done
if [[ "$(uname -m)" == x86_64 ]]; then
  stamped="$("${project}/dist/fx-linux-x86_64" 2>&1)"
  [[ "${stamped}" == 1.2.3 ]] || { echo "FATAL: the version stamp reads ${stamped}, expected 1.2.3" >&2; exit 1; }
fi

# An unexpanded ref name falls through to the next version source
(cd "${project}" && GITHUB_REF_NAME='{tag}' M6E_VERSION=4.5.6 TARGET_OS=linux TARGET_ARCH=amd64 auto-go-build)
if [[ "$(uname -m)" == x86_64 ]]; then
  stamped="$("${project}/dist/fx-linux-x86_64" 2>&1)"
  [[ "${stamped}" == 4.5.6 ]] || { echo "FATAL: the placeholder was not skipped, stamp reads ${stamped}" >&2; exit 1; }
fi

# An excluded cell and a cell outside the lists both fail rather than build nothing green
for cell in darwin/riscv64 windows/amd64; do
  if (cd "${project}" && TARGET_OS="${cell%/*}" TARGET_ARCH="${cell#*/}" auto-go-build) 2>/dev/null; then
    echo "FATAL: the ${cell} cell built green" >&2
    exit 1
  fi
done

# An asset template with a placeholder the spec does not define fails, naming it
sed --in-place 's|^        command: fx$|        command: fx\n        asset: fx-{TARGET_OS}|' "${project}/projectfile.yaml"
if (cd "${project}" && TARGET_OS=linux TARGET_ARCH=amd64 auto-go-build) 2>/dev/null; then
  echo "FATAL: an asset with {TARGET_OS} built green" >&2
  exit 1
fi

# A project with no binary artifact is a green no-op
mkdir "${work}/empty"
printf 'identity:\n  name: empty\n' > "${work}/empty/projectfile.yaml"
(cd "${work}/empty" && auto-go-build)
