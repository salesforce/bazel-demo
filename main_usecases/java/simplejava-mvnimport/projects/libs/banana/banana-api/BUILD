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
        "@org_hamcrest_hamcrest_core//jar",
    ],
) for name in glob(["src/test/java/**/*Test.java"])]
