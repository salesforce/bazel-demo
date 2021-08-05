#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

apple_deps = [
    "//projects/libs/apple/apple-api/src/main/java/demo/apple/api",
    "//projects/libs/apple/apple-api/src/main/java/demo/apple/app",
    "//projects/libs/apple/apple-api/src/main/java/demo/apple/util",
]

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
    "@maven//:ch_qos_logback_logback_core",
]

java_test(
    name = "apple-api-test",
    size = "small",
    srcs = ["AppleTest.java"],
    test_class = "demo.apple.api.AppleTest",
    deps = apple_deps + test_deps,
)

java_test(
    name = "apple-api-test2",
    size = "small",
    srcs = ["AppleTest2.java"],
    test_class = "demo.apple.api.AppleTest2",
    deps = apple_deps + test_deps,
)
