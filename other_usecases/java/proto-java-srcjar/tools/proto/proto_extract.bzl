#
# Copyright (c) 2022, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

def proto_extract(
        name,
        proto_lib,
        proto_files = [],
        tags = [],
        visibility = None):
    native.genrule(
        name = name + "_files",
        srcs = [
            proto_lib,
        ],
        cmd = "$(location //tools/proto:proto_extract.sh) " +
              " $(JAVABASE) " +
              name + " " +
              native.package_name() + " " +
              "$(RULEDIR) " +
              "$(SRCS) " +
              "$(OUTS)",
        tools = [
            "//tools/proto:proto_extract.sh",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        tags = tags,
        outs = proto_files,
        toolchains = ["@bazel_tools//tools/jdk:current_host_java_runtime"],  # so that JAVABASE is computed
    )
