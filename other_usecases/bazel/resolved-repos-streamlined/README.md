## Streamlined Resolved Repos Demo Workspace

This build uses the *Resolved Repos* feature to carefully manage external dependencies.
The *resolved repos file* precisely pins every external dependency to help ensure a hermetic build.
The *resolved repos file* feature is closely related to *bazel sync*.

More information about *resolved repos* and *bazel sync* can be found in these locations:
- [Bazel Sync and Resolved Files](https://blog.bazel.build/2018/07/09/bazel-sync-and-resolved-file.html)
- [First-class Resolved Files](https://blog.bazel.build/2018/09/28/first-class-resolved-file.html)
- [Fetching Dependencies with Bazel Sync](https://docs.bazel.build/versions/master/external.html#fetching-dependencies)

This example extends from the first blog post above, in that it uses synced data for more than *git_repository* rules.
It also uses the synced data (aka the resolved file) for *http_archive* and *maven_install* dependencies.

### What is Streamlined?

The standard [resolved repos example](../resolved-repos) loads the resolved repositories via a Starlark script
  invoked from the *WORKSPACE* file.
This works, and is the way to go if your *WORKSPACE* file does more than just load external dependencies.

But, there is an easier way to go.
Bazel supports a build option *experimental_resolved_file_instead_of_workspace* that can directly invoke the
  [resolved_repos.bzl](resolved_repos.bzl) file without a *WORKSPACE* file.
If your *WORKSPACE* file solely exists to load dependencies, you can use this approach.

To enable this feature of Bazel, simply add this line to your [.bazelrc](.bazelrc) file:

```
build --experimental_resolved_file_instead_of_workspace=resolved_repos.bzl
```
