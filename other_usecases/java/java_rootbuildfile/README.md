### Java Workspace with a root BUILD file

The **java_rootbuildfile** example is a Bazel workspace that has multiple Java packages.
One of the Java packages is located at the root of the workspace (//BUILD).
This can surface bugs in tools because it requires the tool to understand the difference
  between target patterns _//..._ and _//:*_.

This workspace is a copy of the **simplejava_mvninstall** workspace, with the _apple-api_ 
  package moved to the root directory (instead of _projects/libs/app/apple-api_)
