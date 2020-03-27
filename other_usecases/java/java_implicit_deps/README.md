### Java Workspace with Implicit Java Test Dependencies

This is a subset of the simple-java workspace in the [main usecases](../../../../main_usecases/java) directory.
It does **not** follow best practices and leaves *--explicit_java_test_deps* as the default value of *false*.
This allows BUILD files with *java_test* rules to omit declaring certain test dependencies like *junit* and *hamcrest*.

This is a bad practice because it uses the versions of those dependencies from inside the Bazel installer.
An upgrade of Bazel could therefore bring in new versions of those dependencies without alerting you.
Also, IDEs like the [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse/blob/master/docs/conforming_java_packages.md#recommended-java-conventions) must have special code to detect this case.
