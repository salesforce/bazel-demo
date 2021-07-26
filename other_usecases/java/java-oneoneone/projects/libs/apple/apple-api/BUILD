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

java_binary(
    name = "apple-main",
    main_class = "demo.apple.app.AppleApp",
    resources = glob(["src/main/resources/*.properties"]),
    visibility = ["//visibility:public"],
    runtime_deps = apple_deps + [
        "@maven//:com_google_guava_guava",
        "@maven//:org_slf4j_slf4j_api",
    ],
)
