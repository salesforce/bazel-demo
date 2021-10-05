### Multivariate Package

The **multivariate package** is a Bazel workspace that has a package (BUILD file) that contains multiple
  distinct Java library rules.
This goes against a long standing Java development practice popularized by Maven that a single
  directory (i.e. pom.xml) contains only one Java library build
    (ignoring the fringe use of Maven *classifiers*).
But, Bazel allows this use case and so we need to  be mindful that some real builds out in the wild may do this.

This is a different use case than the [Wix 1-1-1 model](../java-oneoneone)
  where a single Java library is built by assembling the outputs of multiple BUILD files.
