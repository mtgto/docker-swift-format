# Future ideas

## Fully static binary via Swift Static Linux SDK

`swift-format` is currently built with `--static-swift-stdlib`, which only
statically links the Swift runtime/stdlib. The resulting binary is still a
dynamically linked ELF (`interpreter /lib64/ld-linux-x86-64.so.2`), so the
final image must be based on `gcr.io/distroless/cc-*` (glibc + libstdc++).

Swift ships a [Static Linux SDK](https://www.swift.org/documentation/articles/static-linux-getting-started.html)
that cross-compiles fully static (musl-based) executables. If `swift-format`
builds cleanly against it, the final stage could move to
`gcr.io/distroless/static` or even `scratch`, dropping glibc/libstdc++
entirely and shrinking both image size and attack surface further.

Open questions before attempting this:
- Whether `swift-format`'s dependencies (Foundation, ICU) build and run
  correctly against musl.
- Whether the SDK needs to be installed per target architecture, and how
  that interacts with multi-platform builds in CI.

Worth a spike, not a quick fix.
