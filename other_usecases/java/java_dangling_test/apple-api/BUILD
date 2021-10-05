#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "apple-api-lib",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

test_deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_core",
        "@maven//:ch_qos_logback_logback_core",
]

#
# AppleTest has a java_test rule here.
# DanglingTest is on the classpath because of this glob for AppleTest but is not 
# otherwise referenced in the BUILD file. If you try to launch DanglingTest as a
# JUnit test from an IDE, you will hopefully get a nice error message.
# 

java_test(
    name = "apple-api-test",
    size = "small",
    srcs = glob(["src/test/java/**/*.java"]),
    test_class = "demo.apple.api.AppleTest",
    deps = [":apple-api-lib"] + test_deps,
)
