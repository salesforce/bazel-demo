## proto_extract

This simple macro is for the case in which you have a jar file that contains one or more .proto files.
This macro extracts the proto files from the jar file to be used in a *proto_library* rule.

Here is the summary usage:

```starlark
load("//tools/proto:proto_extract.bzl", "proto_extract")

proto_extract(
    name = "helloworldjar_extract",
    proto_files = [
        # List the .proto file(s) in the jar you want to use.
        # You can list multiple proto files, but Bazel best practice suggests using
        #   a single proto_library to represent a single .proto file.
        # If the proto file is not in the root of the jar, prepend the filename with the
        #   path inside the jar (for this example it is in the jar in an 'api' subdir).
        "api/helloworld.proto",
    ],
    # Identify the proto jar (this example used java_import to bring in the jar)
    proto_lib = ":helloworldjar",
    # If you use maven_install to bring in the jar, it will look something like this:
    #proto_lib = "@maven//:com_acme_api_myservice_proto",
)

proto_library(
    name = "helloworld_proto",
    # Refer to the proto_extract target in the src attribute.
    # GOTCHA: note the _files suffix to this target; that is an internal genrule
    # under the covers of the proto_extract macro.
    srcs = [":helloworldjar_extract_files"],
    strip_import_prefix = "",
)
```

You can now use the *helloworld_proto* target as you would any *proto_library* output:
- In a language proto rule like *java_proto_library*
- As a dep to another *proto_library* (if the protos are imported by other protos)
