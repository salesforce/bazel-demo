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

# Running bazel test //... from the command line will work because the test runner
# implicitly adds junit and hamcrest to the classpath. But if you load this project
# into an IDE, AppleTest.java will appear to have compile errors unless the IDE
# has special logic to add the junit/hamcrest deps to the IDE classpath
#  https://github.com/salesforce/bazel-eclipse/issues/43
test_deps = [
    #    "@maven//:junit_junit",
    #    "@maven//:org_hamcrest_hamcrest_core",
    #    "@maven//:ch_qos_logback_logback_core",
]

java_test(
    name = "apple-api-test",
    size = "small",
    srcs = ["src/test/java/demo/apple/api/AppleTest.java"],
    test_class = "demo.apple.api.AppleTest",
    deps = [":apple-api-lib"] + test_deps,
)
