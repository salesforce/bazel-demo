### Java Workspace with Two Packages Using Different Versions of Guava

This workspace contains two Bazel packages that use different versions of Guava:

- //projects/libs/old/guava (Guava 18)
- //projects/libs/modern/guava (Guava 23)

The test is to reference a method that was added in Guava 23 and make sure compilation breaks for that method in the old guava package.
Uncomment the line noted in this class and rebuild:

[OldGuava.java](projects/libs/old-guava/src/main/java/demo/old/guava/OldGuava.java)

This is a good test case for an issue in Intellij:
- [Single Classpath for entire workspace in IJ](https://github.com/bazelbuild/intellij/issues/179)
