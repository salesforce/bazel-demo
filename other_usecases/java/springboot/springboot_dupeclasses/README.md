###  Spring Boot with Duplicate Classes

This Bazel workspace contains an example of the [Spring Boot rule](https://github.com/salesforce/bazel-springboot-rule).
See the rule repository for more information about the rule.

This workspace demonstrates a feature of the rule.
It can detect the presence of classes (package + classname) that are present in more than one jar,
  and are not the exact same classfile bytes.

The feature is described in more detail here:
- [Spring Boot rule duplicate class checking](https://github.com/salesforce/bazel-springboot-rule/tree/master/tools/springboot#duplicate-classes-detection)

### Exercising this Demo

All of the demos found this *bazel-demo* repository must build and test correctly as-is when checked into Git.
The intent of this demo is break the build, so it is not enabled by default.

To see this demo in action, please change the springboot rule [in this BUILD file](https://github.com/salesforce/bazel-demo/blob/master/other_usecases/java/springboot/springboot_dupeclasses/app/BUILD#L32) to:

```
# FAIL ON DUPLICATE CLASSES: SET THIS TO TRUE
fail_on_duplicate_classes = True,
```

and then issue a *bazel build //...* command.
You should see a build error such as:

```
The class [com/bazel/demo/IntentionalDupedClass.class] was found in multiple jars:
('bazel-out/darwin-fastbuild/bin/libs/lib1/liblib1.jar', '45b628c697946e35fee4690021919733')
('bazel-out/darwin-fastbuild/bin/libs/lib2/liblib2.jar', '7630a1fefef5bf42acf7068968b2b54d')
```
