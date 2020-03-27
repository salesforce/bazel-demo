### Java Workspace with Two Packages with Same Name

This workspace contains two Bazel packages with the same name.

- //projects/libs/path1/apple-api
- //projects/libs/path2/apple-api

This is interesting to the [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse) because it by default names
  each Eclipse project with the name of the last element of the Bazel package (e.g. apple-api).
