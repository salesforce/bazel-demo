### Simple Java Workspace with Maven Import

The **simple java workspace** is a Bazel workspace used for doing basic Bazel demos and IDE testing.
It is the core use case for the [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse).

The intent of this workspace is to be happy-path and cover the basic features of a Java workspace.
We want it to be the primary workspace for doing quick intro demos for Bazel,
  and is a quick validation use case for our IDE work.

This variant uses the *jvm_maven_import_external* rule from the *bazel_tools* repo to import external dependencies.
