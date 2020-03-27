#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "grapes-api",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "//projects/libs/apple/apple-api",
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

[java_test(
    name = name[:-len(".java")],  # Remove .java suffix so tests can be found
    size = "small",
    srcs = [name],
    deps = [
        ":grapes-api",
        "@maven//:junit_junit",
    ],
) for name in glob(["src/test/java/**/*Test.java"])]
