# Output file from our bazel sync command
load("//:resolved_repos.bzl", "resolved")

# Load our repo rules that know how to download the synced repos
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@rules_jvm_external//:coursier.bzl", "coursier_fetch")


def load_resolved_repos():
    for entry in resolved:
        if "repositories" in entry:
          for repo in entry["repositories"]:
              # print(repo["rule_class"] + " " + repo["attributes"]["name"])
              if repo["rule_class"] == "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository":
                  git_repository(**(repo["attributes"]))
              elif repo["rule_class"] == "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive":
                  http_archive(**(repo["attributes"]))
              elif repo["rule_class"] == "@rules_jvm_external//:coursier.bzl%coursier_fetch":
                  coursier_fetch(**(repo["attributes"]))
