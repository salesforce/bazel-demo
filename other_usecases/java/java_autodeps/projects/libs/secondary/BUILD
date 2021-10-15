#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "secondary",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:org_slf4j_slf4j_api",
    ],
)

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
]

java_test(
    name = "secondary-test",
    size = "small",
    srcs = ["src/test/java/demo/secondary/demo/SecondaryDemoTest.java"],
    test_class = "demo.secondary.demo.SecondaryDemoTest",
    deps = [":secondary"] + test_deps,
)
