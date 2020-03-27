#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

load("@rules_proto//proto:defs.bzl", "proto_library")

proto_library(
    name = "helloworld_proto",
    srcs = ["helloworld.proto"],
    visibility = ["//visibility:public"],
)

java_lite_proto_library(
    name = "helloworld_java_proto",
    visibility = ["//visibility:public"],
    deps = [":helloworld_proto"],
)
