#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

helloworld_msg_deps = [
    "//proto:helloworld_java_proto",
]

java_library(
    name = "helloworld",
    srcs = ["src/main/java/helloworld/HelloWorld.java"],
    visibility = ["//visibility:public"],
    deps = helloworld_msg_deps,
)

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
    "@maven//:ch_qos_logback_logback_core",
]

java_test(
    name = "helloworld-test",
    size = "small",
    srcs = ["src/test/java/helloworld/HelloWorldTest.java"],
    test_class = "helloworld.HelloWorldTest",
    deps = [":helloworld"] + test_deps + helloworld_msg_deps,
)
