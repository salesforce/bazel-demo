## Resolved Repos Demo Workspace

This build uses the *Resolved Repos* feature to carefully manage external dependencies.
The *resolved repos file* precisely pins every external dependency to help ensure a hermetic build.
The *resolved repos file* feature is closely related to *bazel sync*.

More information about *resolved repos* and *bazel sync* can be found in these locations:
- [Bazel Sync and Resolved Files](https://blog.bazel.build/2018/07/09/bazel-sync-and-resolved-file.html)
- [First-class Resolved Files](https://blog.bazel.build/2018/09/28/first-class-resolved-file.html)
- [Fetching Dependencies with Bazel Sync](https://docs.bazel.build/versions/master/external.html#fetching-dependencies)

:fire: These examples are very experimental and more ideas rather than working solutions.

This example extends from the first blog post above, in that it uses synced data for more than *git_repository* rules.
It also uses the synced data (aka the resolved file) for *http_archive* and *maven_install* dependencies.

### Capturing the Versions of External Dependencies

If you want to change, add or delete an external dependency in this workspace, first update the
  [WORKSPACE.sync](WORKSPACE.sync) file.
It looks like a standard Bazel *WORKSPACE* file, and it is except for it's name.

The workflow looks like this:

- ```cp WORKSPACE WORKSPACE.orig```
- ```cp WORKSPACE.sync WORKSPACE```
- make your candidate changes to the standard WORKSPACE file
- ```bazel build //...```  (iterate until the build works)
- ```bazel test //...```   (iterate until the tests work)
- ```bazel sync --experimental_repository_resolved_file=resolved_repos.bzl```
- ```cp WORKSPACE WORKSPACE.sync```
- ```cp WORKSPACE.orig WORKSPACE```
- ```bazel test //...```

### How Dependencies are Loaded from resolved_repos.bzl

The way it works by having the *WORKSPACE* file invoke code similiar to this in [load_resolved_repos.bzl](load_resolved_repos.bzl)
  after parsing the *resolved_repos.bzl* generated file.
It iterates through each dependency in the *resolved_repos.bzl* file and invokes the appropriate repository rule:

```
if repo["rule_class"] == "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository":
    git_repository(**(repo["attributes"]))
elif repo["rule_class"] == "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive":
    http_archive(**(repo["attributes"]))
elif repo["rule_class"] == "@rules_jvm_external//:coursier.bzl%coursier_fetch":
    coursier_fetch(**(repo["attributes"]))
```

### Is there an easier way? For most cases, yes!

If your *WORKSPACE* file is strictly used for importing external deps, you can directly invoked the *resolved_repos.bzl* file
   instead of using a *WORKSPACE* file and *load_resolved_repos.bzl*.
The [resolved-repos-streamlined](../resolved-repos-streamlined) example shows how to do this.
