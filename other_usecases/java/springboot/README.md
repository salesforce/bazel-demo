### Spring Boot Examples

The Bazel workspaces under this directory contain an example of the [Spring Boot rule](https://github.com/salesforce/bazel-springboot-rule).
See the rule repository for more information about the rule.

There are three variants of the Spring Boot workspace:

- **springboot-mvninstall** - uses the *maven_install* rule from the *rules_jvm_external* repo to import external dependencies
- **springboot-mvnimport** - uses the *jvm_maven_import_external* rule from the *bazel_tools* repo to import external dependencies
- **springboot-mvnjar** - uses the obsolete *maven_jar* rule that was built into Bazel to import external dependencies. *maven_jar* was removed in Bazel version 2.0
