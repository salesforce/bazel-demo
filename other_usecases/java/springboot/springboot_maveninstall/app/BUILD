#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

load("@rules_spring//springboot:springboot.bzl", "springboot")

deps = [
    "@maven//:org_slf4j_slf4j_api",
    #    "@bazel_springboot_rule//tools/springboot/import_bundles:springboot_required_deps",
    #    "@bazel_springboot_rule//tools/springboot/import_bundles:springboot_jetty_starter_deps",
    #    "@bazel_springboot_rule//tools/springboot/import_bundles:springboot_web_starter_deps",
    "//tools/springboot/import_bundles:springboot_required_deps",
    "//tools/springboot/import_bundles:springboot_jetty_starter_deps",
    "//tools/springboot/import_bundles:springboot_web_starter_deps",
]

test_deps = [
    "@maven//:junit_junit",
    "@maven//:org_hamcrest_hamcrest_core",
    "@maven//:org_springframework_boot_spring_boot_test",
    "@maven//:org_springframework_spring_test",
]

# Build the app
springboot(
    name = "springboot_mavenjar",
    boot_app_class = "com.bazel.demo.SpringBootDemoApp",
    fail_on_duplicate_classes = False,
    java_library = ":base_lib",
    deps = deps,
)

java_library(
    name = "base_lib",
    srcs = glob(["src/main/java/**/*.java"]),
    resources = glob(["src/main/resources/**"]),
    deps = deps,
)

java_test(
    name = "ExampleTest",
    size = "small",
    srcs = glob(["src/**/*.java"]),
    tags = [
        "my-favorite-tag",
        "some-other-tag",
    ],
    test_class = "com.bazel.demo.ExampleTest",
    deps = deps + test_deps,
)
