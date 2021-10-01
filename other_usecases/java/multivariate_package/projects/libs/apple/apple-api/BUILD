#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "apple-api-primary",
    srcs = glob(["src-primary/main/java/**/*.java"]),
    resources = glob(["src-primary/main/resources/*.properties"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

java_library(
    name = "apple-api-alt",
    srcs = glob(["src-alt/main/java/**/*.java"]),
    resources = glob(["src-alt/main/resources/*.properties"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

java_binary(
    name = "apple-main",
    srcs = glob(["src-primary/main/java/**/*.java"]),
    main_class = "demo.apple.api.Apple",
    resources = glob(["src-primary/main/resources/*.properties"]),
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
    name = "apple-api-test-primary",
    size = "small",
    srcs = ["src-primary/test/java/demo/apple/api/AppleTest.java"],
    resources = glob(["src-primary/test/resources/test.properties"]),
    test_class = "demo.apple.api.AppleTest",
    deps = [":apple-api-primary"] + test_deps,
)

java_test(
    name = "apple-api-test-alt",
    size = "small",
    srcs = ["src-alt/test/java/demo/apple/apialt/AppleAltTest.java"],
    resources = glob(["src-alt/test/resources/test.properties"]),
    test_class = "demo.apple.api-alt.AppleAltTest",
    deps = [":apple-api-alt"] + test_deps,
)
