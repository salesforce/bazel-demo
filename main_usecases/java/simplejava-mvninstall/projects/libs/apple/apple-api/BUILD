#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "apple-api",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

java_binary(
    name = "apple-main",
    srcs = glob(["src/main/java/**/*.java"]),
    main_class = "demo.apple.api.Apple",
    resources = glob(["src/main/resources/*.properties"]),
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
    srcs = ["src/test/java/demo/apple/api/AppleTest.java"],
    resources = glob(["src/test/resources/*.properties"]),
    test_class = "demo.apple.api.AppleTest",
    deps = [":apple-api"] + test_deps,
)

java_test(
    name = "apple-api-test2",
    size = "small",
    srcs = ["src/test/java/demo/apple/api/AppleTest2.java"],
    test_class = "demo.apple.api.AppleTest2",
    deps = [":apple-api"] + test_deps,
)
