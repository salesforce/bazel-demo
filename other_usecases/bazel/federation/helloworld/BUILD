#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "helloworld",
    srcs = ["src/main/java/helloworld/HelloWorldCommon.java"],
    visibility = ["//visibility:public"],
    deps = [],
)

helloworld_msg_deps = [
    "//proto:helloworld_java_proto",
    "//proto:helloworld_java_grpc",
]

grpc_deps = [
    "@maven//:com_google_api_grpc_proto_google_common_protos",
    "@maven//:com_google_code_findbugs_jsr305",
    "@maven//:com_google_code_gson_gson",
    "@com_google_protobuf//:protobuf_java",
    "@com_google_protobuf//:protobuf_java_util",
    "@io_grpc_grpc_java//api",
    "@io_grpc_grpc_java//protobuf",
    "@io_grpc_grpc_java//stub",
]

java_binary(
    name = "helloworld-client",
    srcs = ["src/main/java/helloworld/HelloWorldClient.java"],
    main_class = "helloworld.HelloWorldClient",
    visibility = ["//visibility:public"],
    runtime_deps = [
        "@io_grpc_grpc_java//netty",
    ],
    deps = [
        ":helloworld",
        "@maven//:org_slf4j_slf4j_api",
        "@maven//:com_google_guava_guava",
    ] + grpc_deps + helloworld_msg_deps,
)

java_binary(
    name = "helloworld-server",
    srcs = ["src/main/java/helloworld/HelloWorldServer.java"],
    main_class = "helloworld.HelloWorldServer",
    visibility = ["//visibility:public"],
    runtime_deps = [
        "@io_grpc_grpc_java//netty",
    ],
    deps = [
        ":helloworld",
        "@maven//:org_slf4j_slf4j_api",
        "@maven//:com_google_guava_guava",
    ] + grpc_deps + helloworld_msg_deps,
)

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
    "@maven//:ch_qos_logback_logback_core",
    "@io_grpc_grpc_java//testing",
    "@io_grpc_grpc_java//core:inprocess",
]

java_test(
    name = "helloworld-test",
    size = "small",
    srcs = ["src/test/java/helloworld/HelloServerTest.java"],
    test_class = "helloworld.HelloServerTest",
    deps = [":helloworld-server"] + test_deps + helloworld_msg_deps,
)
