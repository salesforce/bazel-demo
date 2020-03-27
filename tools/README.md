## Bazel Demo Tools

### format_bazel_files.sh

Runs [buildifier](https://github.com/bazelbuild/buildtools/tree/master/buildifier) on all of the *BUILD* and *.bzl* files in this repo.
buildifier has both a formatter, and a linter.
The formatter will ensure that all of the *BUILD* and *.bzl* files have consistent style.
The linter will check for issues beyond what the *bazel* executable will find.

```
./tools/format_bazel_files.sh
```

### precheckin.sh

Runs build and test on all workspaces in this repo.
This is a good step to do prior to committing new changes.

```
./tools/precheckin.sh
```

If you use bazelisk, set *BAZEL_CMD* prior to running the script:

```
# set BAZEL_CMD to your bazelisk binary, like this:
export BAZEL_CMD=bazelisk-darwin-amd64

./tools/precheckin.sh
```

If you want the script to run *bazel clean* in each workspace prior to build/test, pass 'clean' as a param:

```
./tools/precheckin.sh clean
```

### maven_to_netrc.py

The newer Bazel dependency managers (like [coursier](https://github.com/coursier/coursier)) need a *~/.netrc* file with user credentials for
the remote repository.
For users with a Maven settings.xml, this is a useful utility to quickly create the file.
This tool will extract the *default* server username and password out of your *~/.m2/settings.xml* file and write it to *~/.netrc*.

```
cd tools
python3 maven_to_netrc.py ~/.m2/settings.xml ~/.netrc default w
```
