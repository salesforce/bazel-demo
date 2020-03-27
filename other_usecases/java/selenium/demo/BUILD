#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

load("@io_bazel_rules_webtesting//web:java.bzl", "java_web_test_suite")

java_library(
    name = "lib-main",
    srcs = glob(["src/main/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
    ],
)

java_binary(
    name = "server-main",
    srcs = glob(["src/main/java/**/*.java"]),
    main_class = "com.salesforce.selenium.Server",
    visibility = ["//visibility:public"],
    deps = [
    ],
)

java_library(
    name = "lib-test",
    testonly = True,
    srcs = glob(["src/test/java/**/*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        ":lib-main",
        "@io_bazel_rules_webtesting//java/com/google/testing/web",
        "@junit_junit",
        "@org_seleniumhq_selenium_selenium_api",
    ],
)

java_web_test_suite(
    name = "demo_test",
    srcs = ["src/test/java/com/salesforce/selenium/DemoTest.java"],
    browsers = [
        "@io_bazel_rules_webtesting//browsers:chromium-local",
        "@io_bazel_rules_webtesting//browsers:firefox-local",
    ],
    local = True,
    test_class = "com.salesforce.selenium.DemoTest",
    deps = [
        ":lib-main",
        "@io_bazel_rules_webtesting//java/com/google/testing/web",
        "@junit_junit",
        "@org_seleniumhq_selenium_selenium_api",
    ],
)
