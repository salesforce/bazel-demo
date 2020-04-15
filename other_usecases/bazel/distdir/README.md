## Bazel DistDir Example Workspace

This workspace contains a script that generates a *distdir* directory that can be used
   to pre-download most/all of your workspace external dependencies.
This can be useful in cases like:
- CI system builds performance: you can download the assets once, mount it to the CI machine, and then every build can use the local copies
- Offline builds: if you have machines that need to run the build offline, *distdir* can help.

### DistDir Limitations

There are limitations to *distdir*, so not all dependencies will be covered.
If any of these limitations apply to you, it doesn't make *distdir* useless - it just won't fully cover all of your assets.

Specifically, these dependencies are not covered by *distdir*:
- anything obtained by the *git_repository* workspace rule; you **must** use *http_archive*
- [maven_install](https://github.com/bazelbuild/rules_jvm_external) currently does not work with *distdir*; that will be [fixed eventually](https://github.com/bazelbuild/bazel/issues/8658).

### compute_download_urls.py

Instead of creating a whole demo workspace just to show the *distdir* feature, this directory
  just contains a Python script that can be used against any Bazel workspace.
Follow the instructions below to learn how to use it.

### Step 1: Generate the DistDir

1. Navigate to the [simplejava_mvninstall](../../../main_usecases/java/simplejava_mvninstall) workspace.
1. Issue this command: ```bazel build //... --experimental_resolved_file_instead_of_workspace=resolved_repos.py```
1. Copy *resolved_repos.py* into this directory
1. Run this command: ```python3 compute_download_urls.py```
1. Inspect the generated *build_distdir.sh* and verify that it looks good
1. Copy *build_distdir.sh* into a file system location where you want your *distdir* to be located
1. cd to the *distdir* directory, and execute *./build_distdir.sh*
1. go get a cup of coffee while it runs

### Step 2: Use the DistDir in a Build

Prepare for the test:

1. cd to your workspace directory: [simplejava_mvninstall](../../../main_usecases/java/simplejava_mvninstall)
1. delete your repository cache: ```rm -rf $(bz info repository_cache)```
1. clean your workspace: ```bazel clean --expunge```

Run the build with the *distdir* option:

```
bazel build --distdir=[path to your distdir] //...
```

You should notice that the build is able to avoid downloads (aside from the limitations explained above).
Currently [there is no good way](https://github.com/bazelbuild/bazel/issues/9265) to verify that all of the assets came from *distdir*.
But with big assets, you will see long pauses for downloads if *distdir* is not working correctly.
