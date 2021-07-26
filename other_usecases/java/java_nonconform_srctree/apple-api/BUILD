#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "apple-api",
    srcs = glob(["source/dev/**/*.java"]) + glob(["source/flat/*.java"]),

    # glob up a custom resources dir, plus a stray properties file in the root of the package
    resources = glob(["source/resources/**/*", "recipe.properties"]),

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

java_test(
    name = "apple-api-test",
    size = "small",
    srcs = ["source/test/demo/apple/api/AppleTest.java"],
    test_class = "demo.apple.api.AppleTest",
    deps = [":apple-api"] + test_deps,
)

java_test(
    name = "apple-api-test2",
    size = "small",
    srcs = ["source/test/demo/apple/api/AppleTest2.java"],
    test_class = "demo.apple.api.AppleTest2",
    deps = [":apple-api"] + test_deps,
)
