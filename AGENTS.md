<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# b19/go

Docker image built on [b19/Ubuntu](../ubuntu/AGENTS.md)

Go toolchain image. Used as builder for many o9s/f5m projects and d9t/go-tools.

## Key facts

- Base: `b19/ubuntu/${B19_UBUNTU_SERIES}` (resolute) — single stage (no separate builder)
- Installed from upstream tarball (not apt)
- No series axis (single image)
- Platforms: amd64, arm64, **riscv64** (only b19 project with riscv64)
- Pinned version: check `.container/base/deps/go/version.deps`

## ENV

- `CGO_ENABLED=0` (default — unusual)
- `GOTOOLCHAIN=local` — always compile with this image’s bundled Go (see `version.deps`); never download the `toolchain`/`go` version pinned in an upstream `go.mod`. Forces our patched Go into every source build and kills build-time toolchain fetches. Fails loud if a project’s `go.mod` needs a newer Go — bump `version.deps` then.
- `GOAMD64=v3` (x86-64-v3 baseline)
- `GOARM64=v8.1,lse,crypto`
- `GORISCV64=rva20u64`
- `GOBIN="/usr/local/bin"` (binaries go to system path)
- `GOCACHE=${XDG_CACHE_HOME}/build`, `GOMODCACHE=${XDG_CACHE_HOME}/download`
- `B19_GO_CROSS_ARCHES="amd64 arm64 riscv64"` (cross-build target list; overridable per-consumer)

## Dep files

- `go.deps` — packages for `go install` into the current image (declarative)
- `build.go.deps` — packages cross-built for every arch in `B19_GO_CROSS_ARCHES`; output named `<binary>.<arch>` in `${GOBIN}` (e.g. `dasel.amd64`, `dasel.arm64`, `dasel.riscv64`). Used to break OS-layer bootstrap cycles where a downstream consumer needs all-arch binaries from a single-arch builder pass (e.g. `b19/dasel` → `b19/ubuntu`).

## Documentation

- [Available make targets](@docs/MAKEFILE.md)
- [Known caveats and limitations](@docs/caveats.md)
- [Completed features](@docs/done.md)
- [Project fit and alignment](@docs/fit.md)
- [Project goals](@docs/goal.md)
- [Future roadmap](@docs/roadmap.md)
