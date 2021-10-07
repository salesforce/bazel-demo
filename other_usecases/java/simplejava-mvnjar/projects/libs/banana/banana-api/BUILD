#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_library(
    name = "banana-api",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_guava_guava//jar",
        "@org_slf4j_slf4j_api//jar",
    ],
)

[java_test(
    name = name[:-len(".java")],  # Remove .java suffix so tests can be found
    size = "small",
    srcs = [name],
    deps = [
        ":banana-api",
        "@junit_junit//jar",
    ],
) for name in glob(["src/test/java/**/*Test.java"])]
