#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "apple-pie-lib",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "//projects/libs/path1/apple-api:apple-api-lib",
        "//projects/libs/path2/apple-api:apple-api-lib",
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
]

java_test(
    name = "apple-pie-test",
    size = "small",
    srcs = ["src/test/java/demo/apple/pie/ApplePieTest.java"],
    test_class = "demo.apple.pie.ApplePieTest",
    deps = [":apple-pie-lib"] + test_deps,
)
