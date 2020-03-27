## Java Nonconforming Source Tree Demo Workspace

This workspace violates the BEF Java conforming package rules:

- [BEF Java Conforming Package](https://github.com/salesforce/bazel-eclipse/blob/master/docs/conforming_java_packages.md)

The apple-api package in this workspace puts source code in non-Maven style folders:

- *source/dev* instead of *src/main/java*
- *source/test* instead of *src/test/java*
