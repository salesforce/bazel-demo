## Bazel Feature Examples

This directory contains a set of Bazel workspaces that make use of specific Bazel features.
These are generally independent of programming language or tech stack.
The programming language usages in these examples are generally irrelevant.

- [Resolved Repos](resolved-repos) demonstrates the use of a pinned set of external dependencies controlled by *bazel sync*
- [Resolved Repos (streamlined)](resolved-repos-streamlined) a variant of the *resolved-repos* workspace that eliminates the need for a *WORKSPACE* file
- [DistDir](distdir) shows how to use the Bazel distdir feature to preload workspace downloads, useful if offline builds are needed
