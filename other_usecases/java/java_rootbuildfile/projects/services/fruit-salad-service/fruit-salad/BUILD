#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

java_binary(
    name = "fruit-salad",
    srcs = glob(["src/main/java/**/*.java"]),
    create_executable = True,
    main_class = "demo.salesforce.salad.FruitSalad",
    visibility = ["//visibility:public"],
    deps = [
        "//:apple-api",
        "//projects/libs/banana/banana-api",
        "@maven//:ch_qos_logback_logback_core",
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)

[java_test(
    name = name[:-len(".java")],  # Remove .java suffix so tests can be found
    size = "small",
    srcs = [name],
    deps = [
        ":fruit-salad",
        "@maven//:junit_junit",
    ],
) for name in glob(["src/test/java/**/*Test.java"])]
