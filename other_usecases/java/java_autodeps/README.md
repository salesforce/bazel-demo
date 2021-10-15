### Java Workspace for Testing Autodeps

Autodeps is an IDE feature that will:

- See that the user has added an import to a Java class
- Notice that the imported class is not on the classpath
- Determine that the class is known in the Bazel workspace
  - Either as an internal dependency (*//some/other/package*) or an external dependency (*@maven//:org_slf4j_slf4j_api*)
- Add the dep to the correct target in the BUILD file

To run this demo, open up the SecondaryDemo class and follow the instructions in the file.

- //projects/libs/primary
- //projects/libs/secondary
