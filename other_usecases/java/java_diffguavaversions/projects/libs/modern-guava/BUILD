#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "modern-guava-lib",
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
]

java_test(
    name = "modern-guava-test",
    size = "small",
    srcs = ["src/test/java/demo/modern/guava/ModernGuavaTest.java"],
    test_class = "demo.modern.guava.ModernGuavaTest",
    deps = [":modern-guava-lib"] + test_deps,
)
