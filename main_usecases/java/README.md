### Simple Java

The **simple java workspace** is a Bazel workspace used for doing basic Bazel demos and IDE testing.
It is the core use case for the [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse).

The intent of this workspace is to be happy-path and cover the basic features of a Java workspace.
We want it to be the primary workspace for doing quick intro demos for Bazel,
  and is a quick validation use case for our IDE work.

There are three variants of Simple Java

- **simplejava-mvninstall** - uses the *maven_install* rule from the *rules_jvm_external* repo to import external dependencies
- **simplejava-mvnimport** - uses the *jvm_maven_import_external* rule from the *bazel_tools* repo to import external dependencies
- **simplejava-mvnjar** - uses the obsolete *maven_jar* rule that was built into Bazel to import external dependencies. *maven_jar* was removed in Bazel version 2.0
