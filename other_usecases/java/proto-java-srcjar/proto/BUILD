#
# Copyright (c) 2022, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

load("//tools/proto:proto_extract.bzl", "proto_extract")
load("@rules_proto//proto:defs.bzl", "proto_library")

# STEP 0: IDENTIFY THE JAR
# This is not normally necessary because you use maven_install to bring in external jars.
# But for this demo it is a local jar.

java_import(
    name = "helloworldjar",
    jars = [
        "helloworld_proto.jar",
    ]
)

# STEP 1: IMPORT THE PROTO FILE

proto_extract(
    name = "helloworldjar_extract",
    proto_files = [
        # you can list multiple proto files, but Bazel best practice suggests using
        # a single proto_library to represent a single .proto file.
        # if the proto file is in a directory, prepend the filename with the path inside the jar
        "api/helloworld.proto",
    ],
    # Identify the proto jar
    proto_lib = ":helloworldjar",

    # If you are using maven_install to bring in the jar, it will look like this:
    #proto_lib = "@maven//:com_acme_api_myservice_proto",
)

# STEP 2: WRAP THE PROTO FILE AS A LIBRARY

proto_library(
    name = "helloworld_proto",
    # GOTCHA: note the _files suffix to this next target, that is an internal genrule
    # under the covers of the proto_extract macro
    srcs = [":helloworldjar_extract_files"],
    strip_import_prefix = "",
)

# STEP 3: USE THE PROTO LIBRARY

java_proto_library(
    name = "helloworld_java_proto",
    visibility = ["//visibility:public"],
    deps = [":helloworld_proto"],
)
