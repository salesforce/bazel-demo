#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

load("@rules_proto//proto:defs.bzl", "proto_library")
load("@io_grpc_grpc_java//:java_grpc_library.bzl", "java_grpc_library")

proto_library(
    name = "helloworld_proto",
    srcs = ["helloworld.proto"],
    visibility = ["//visibility:public"],
)

java_proto_library(
    name = "helloworld_java_proto",
    visibility = ["//visibility:public"],
    deps = [":helloworld_proto"],
)

java_grpc_library(
    name = "helloworld_java_grpc",
    srcs = [":helloworld_proto"],
    visibility = ["//visibility:public"],
    deps = [":helloworld_java_proto"],
)
