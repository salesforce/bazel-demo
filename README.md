# Bazel Demo Workspaces

This Git repo contains a collection of Bazel workspaces for use in demos and testing.
Each workspace exercises a subset of the functionality we need, and are intended to remain small.
This makes these workspaces easier to use for demos and tool development than a production Bazel workspace.

### Main Use Case - Simple Java Workspaces

The [simple java workspaces](main_usecases/java) are a set of Bazel workspaces used for doing basic Bazel demos and IDE testing.
It is the core use case for the [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse).

The intent of these workspaces is to be happy-path and cover the basic features of a Java workspace.
We want them to be the primary workspaces for doing quick intro demos for Bazel,
  and is a quick validation use case for our IDE work.

### Other Use Cases

In the [other usecases](other_usecases) directory you will find an ever evolving set of
   Bazel workspaces that each exercise a particular use case.
These workspaces are used for validation testing of [Bazel Eclipse Feature](https://github.com/salesforce/bazel-eclipse), [Bazel Spring Boot Rule](https://github.com/salesforce/bazel-springboot-rule), and other projects.

### Bazelisk

We recommend installing and using [Bazelisk](https://github.com/bazelbuild/bazelisk) instead of
  installing Bazel directly.
Bazelisk detects the required version of each Bazel workspace and launches the right version of Bazel for it.
In a repo like *Bazel Demo* where we have many Bazel workspaces that need different versions, Bazelisk saves you the trouble of re-installing Bazel over and over as you work with different workspaces.

Bazelisk determines the version required for a workspace by reading the *.bazelversion* file in it.

### .user-bazelrc

If you wish to add config settings to the builds of these workspaces, you can have a toplevel file named *.user-bazelrc* in the root of this repo.
All of the workspace builds will import this configuration file.
