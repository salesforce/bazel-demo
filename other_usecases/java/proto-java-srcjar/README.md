## proto_extract

This simple macro is for the case in which you have a jar file that contains one or more .proto files.
This macro extracts the proto files from the jar file to be used in a *proto_library* rule.

Here is the summary usage:

```starlark
load("//tools/proto:proto_extract.bzl", "proto_extract")

proto_extract(
    name = "helloworldjar_extract",
    proto_files = [
        # you can list multiple proto files, but Bazel best practice suggests using
        # a single proto_library to represent a single .proto file.
        # if the proto file is in a directory, prepend the filename with the path inside the jar
        "api/helloworld.proto",
    ],
    # Identify the proto jar (this form would be if it was brought in with java_import)
    proto_lib = ":helloworldjar",

    # If you are using maven_install to bring in the jar, it will look like this:
    #proto_lib = "@maven//:com_acme_api_myservice_proto",
)

proto_library(
    name = "helloworld_proto",
    # GOTCHA: note the _files suffix to this next target, that is an internal genrule
    # under the covers of the proto_extract macro
    srcs = [":helloworldjar_extract_files"],
    strip_import_prefix = "",
)
```

You can now use the *helloworld_proto* target as with any *proto_library* output:
- In a language proto rule: *java_proto_library*
- As a dep to another *proto_library* (if the protos are imported by other protos)
