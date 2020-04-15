resolved = [
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android/crosstool",
            "actual": "@bazel_tools//tools/cpp:toolchain",
        },
        "native": "bind(name = \"android/crosstool\", actual = \"@bazel_tools//tools/cpp:toolchain\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android/d8_jar_import",
            "actual": "@bazel_tools//tools/android:no_android_sdk_repository_error",
        },
        "native": "bind(name = \"android/d8_jar_import\", actual = \"@bazel_tools//tools/android:no_android_sdk_repository_error\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android/dx_jar_import",
            "actual": "@bazel_tools//tools/android:no_android_sdk_repository_error",
        },
        "native": "bind(name = \"android/dx_jar_import\", actual = \"@bazel_tools//tools/android:no_android_sdk_repository_error\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android/sdk",
            "actual": "@bazel_tools//tools/android:poison_pill_android_sdk",
        },
        "native": "bind(name = \"android/sdk\", actual = \"@bazel_tools//tools/android:poison_pill_android_sdk\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android_ndk_for_testing",
            "actual": "//:dummy",
        },
        "native": "bind(name = \"android_ndk_for_testing\", actual = \"//:dummy\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "android_sdk_for_testing",
            "actual": "//:dummy",
        },
        "native": "bind(name = \"android_sdk_for_testing\", actual = \"//:dummy\")",
    },
    {
        "original_rule_class": "local_repository",
        "original_attributes": {
            "name": "bazel_demo_resolved_repos",
            "path": ".",
        },
        "native": "local_repository(name = \"bazel_demo_resolved_repos\", path = \".\")",
    },
    {
        "original_rule_class": "local_repository",
        "original_attributes": {
            "name": "bazel_tools",
            "path": "/var/tmp/_bazel_plaird/install/8ee987d32e94b9a7b51ef6034faefef4/embedded_tools",
        },
        "native": "local_repository(name = \"bazel_tools\", path = __embedded_dir__ + \"/\" + \"embedded_tools\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "cc_toolchain",
            "actual": "@local_config_cc//:toolchain",
        },
        "native": "bind(name = \"cc_toolchain\", actual = \"@local_config_cc//:toolchain\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "databinding_annotation_processor",
            "actual": "@bazel_tools//tools/android:empty",
        },
        "native": "bind(name = \"databinding_annotation_processor\", actual = \"@bazel_tools//tools/android:empty\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "has_androidsdk",
            "actual": "@bazel_tools//tools/android:always_false",
        },
        "native": "bind(name = \"has_androidsdk\", actual = \"@bazel_tools//tools/android:always_false\")",
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
        "definition_information": "Call stack for the definition of repository 'bazel_skylib' which is a git_repository (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/git.bzl:195:18):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:20:1",
        "original_attributes": {
            "name": "bazel_skylib",
            "remote": "https://github.com/bazelbuild/bazel-skylib",
            "commit": "e59b620b392a8ebbcf25879fc3fde52b4dc77535",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
                "attributes": {
                    "remote": "https://github.com/bazelbuild/bazel-skylib",
                    "commit": "e59b620b392a8ebbcf25879fc3fde52b4dc77535",
                    "shallow_since": "1570639401 -0400",
                    "init_submodules": False,
                    "verbose": False,
                    "strip_prefix": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "name": "bazel_skylib",
                },
                "output_tree_hash": "4c61c7b0ee70aded2b7e65ffcfc5e91cc7105e59f3bc0b22efc122ebbbaab160",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'rules_jvm_external' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:35:1",
        "original_attributes": {
            "name": "rules_jvm_external",
            "url": "https://github.com/bazelbuild/rules_jvm_external/archive/2.9.zip",
            "sha256": "e5b97a31a3e8feed91636f42e19b11c49487b85e5de2f387c999ea14d77c7f45",
            "strip_prefix": "rules_jvm_external-2.9",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "https://github.com/bazelbuild/rules_jvm_external/archive/2.9.zip",
                    "urls": [],
                    "sha256": "e5b97a31a3e8feed91636f42e19b11c49487b85e5de2f387c999ea14d77c7f45",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "rules_jvm_external-2.9",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "rules_jvm_external",
                },
                "output_tree_hash": "269a36f81c2b7490fe8146dbae8ac77ac84db558d4a3837997c2de112fa5fb48",
            },
        ],
    },
    {
        "original_rule_class": "@rules_jvm_external//:coursier.bzl%coursier_fetch",
        "definition_information": "Call stack for the definition of repository 'maven' which is a coursier_fetch (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/rules_jvm_external/coursier.bzl:620:18):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/rules_jvm_external/defs.bzl:89:5\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:43:1",
        "original_attributes": {
            "name": "maven",
            "repositories": [
                "{ \"repo_url\": \"https://maven.google.com\" }",
                "{ \"repo_url\": \"https://repo1.maven.org/maven2\" }",
            ],
            "artifacts": [
                "{ \"group\": \"ch.qos.logback\", \"artifact\": \"logback-core\", \"version\": \"1.2.3\" }",
                "{ \"group\": \"com.google.guava\", \"artifact\": \"guava\", \"version\": \"20.0\" }",
                "{ \"group\": \"junit\", \"artifact\": \"junit\", \"version\": \"4.12\" }",
                "{ \"group\": \"org.hamcrest\", \"artifact\": \"hamcrest-core\", \"version\": \"1.3\" }",
                "{ \"group\": \"org.slf4j\", \"artifact\": \"slf4j-api\", \"version\": \"1.7.25\" }",
            ],
            "fail_on_missing_checksum": True,
            "fetch_sources": True,
            "use_unsafe_shared_cache": False,
            "excluded_artifacts": [],
            "generate_compat_repositories": False,
            "version_conflict_policy": "pinned",
            "override_targets": {},
            "strict_visibility": True,
            "resolve_timeout": 600,
        },
        "repositories": [
            {
                "rule_class": "@rules_jvm_external//:coursier.bzl%coursier_fetch",
                "attributes": {
                    "name": "maven",
                    "repositories": [
                        "{ \"repo_url\": \"https://maven.google.com\" }",
                        "{ \"repo_url\": \"https://repo1.maven.org/maven2\" }",
                    ],
                    "artifacts": [
                        "{ \"group\": \"ch.qos.logback\", \"artifact\": \"logback-core\", \"version\": \"1.2.3\" }",
                        "{ \"group\": \"com.google.guava\", \"artifact\": \"guava\", \"version\": \"20.0\" }",
                        "{ \"group\": \"junit\", \"artifact\": \"junit\", \"version\": \"4.12\" }",
                        "{ \"group\": \"org.hamcrest\", \"artifact\": \"hamcrest-core\", \"version\": \"1.3\" }",
                        "{ \"group\": \"org.slf4j\", \"artifact\": \"slf4j-api\", \"version\": \"1.7.25\" }",
                    ],
                    "fail_on_missing_checksum": True,
                    "fetch_sources": True,
                    "use_unsafe_shared_cache": False,
                    "excluded_artifacts": [],
                    "generate_compat_repositories": False,
                    "version_conflict_policy": "pinned",
                    "override_targets": {},
                    "strict_visibility": True,
                    "resolve_timeout": 600,
                },
                "output_tree_hash": "9a3f1209f6484d98a8c7b297128f79fa69a2fc49dfbdc94199445b9a6c45b1a9",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'rules_python' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:66:1",
        "original_attributes": {
            "name": "rules_python",
            "url": "https://github.com/bazelbuild/rules_python/releases/download/0.0.1/rules_python-0.0.1.tar.gz",
            "sha256": "aa96a691d3a8177f3215b14b0edc9641787abaaa30363a080165d06ab65e1161",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "https://github.com/bazelbuild/rules_python/releases/download/0.0.1/rules_python-0.0.1.tar.gz",
                    "urls": [],
                    "sha256": "aa96a691d3a8177f3215b14b0edc9641787abaaa30363a080165d06ab65e1161",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "rules_python",
                },
                "output_tree_hash": "c2c19aabc4afaa9a8ae1f4467029ae5f21a52d538a92a035e88d34f6ed5175d9",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
        "definition_information": "Call stack for the definition of repository 'BazelRecursiveBottom' which is a git_repository (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/git.bzl:195:18):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:117:1",
        "original_attributes": {
            "name": "BazelRecursiveBottom",
            "remote": "https://github.com/plaird/BazelRecursiveBottom",
            "branch": "master",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
                "attributes": {
                    "remote": "https://github.com/plaird/BazelRecursiveBottom",
                    "commit": "5e5072195cada746a43bffbf8c683cd44aca5c3a",
                    "shallow_since": "1586548771 -0600",
                    "init_submodules": False,
                    "verbose": False,
                    "strip_prefix": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "name": "BazelRecursiveBottom",
                },
                "output_tree_hash": "3c0a0090bd1e8e4ae6198f3631cd184d936708e30c6d7925373c678709e1d7d0",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
        "definition_information": "Call stack for the definition of repository 'BazelRecursiveMiddle' which is a git_repository (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/git.bzl:195:18):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:111:1",
        "original_attributes": {
            "name": "BazelRecursiveMiddle",
            "remote": "https://github.com/plaird/BazelRecursiveMiddle",
            "branch": "master",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
                "attributes": {
                    "remote": "https://github.com/plaird/BazelRecursiveMiddle",
                    "commit": "f4cb74d9aa08368bca24c189ddaf3006864f3b0b",
                    "shallow_since": "1586549150 -0600",
                    "init_submodules": False,
                    "verbose": False,
                    "strip_prefix": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "name": "BazelRecursiveMiddle",
                },
                "output_tree_hash": "a4c943570dd6640ebcb5e7bb40334390319a5fe5123d7ca36b702106dd1cf484",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
        "definition_information": "Call stack for the definition of repository 'BazelRecursiveTop' which is a git_repository (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/git.bzl:195:18):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:105:1",
        "original_attributes": {
            "name": "BazelRecursiveTop",
            "remote": "https://github.com/plaird/BazelRecursiveTop",
            "branch": "master",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:git.bzl%git_repository",
                "attributes": {
                    "remote": "https://github.com/plaird/BazelRecursiveTop",
                    "commit": "baef57c2142ffa1368903fbed11bb089f4cdf5ba",
                    "shallow_since": "1586549615 -0600",
                    "init_submodules": False,
                    "verbose": False,
                    "strip_prefix": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "name": "BazelRecursiveTop",
                },
                "output_tree_hash": "2e60749b3814a6bbe9973b269423873102ea885226e221fd4867a6af9a914026",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'com_google_protobuf' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:84:1",
        "original_attributes": {
            "name": "com_google_protobuf",
            "urls": [
                "https://github.com/protocolbuffers/protobuf/archive/v3.6.1.3.tar.gz",
            ],
            "strip_prefix": "protobuf-3.6.1.3",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://github.com/protocolbuffers/protobuf/archive/v3.6.1.3.tar.gz",
                    ],
                    "sha256": "73fdad358857e120fd0fa19e071a96e15c0f23bb25f85d3f7009abfd4f264a2a",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "protobuf-3.6.1.3",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "com_google_protobuf",
                },
                "output_tree_hash": "7d0cb273d71ef44eda3455a999177aede7ae91997fddeafdd9a52d2b6dd83868",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'com_google_protobuf_javalite' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /Users/plaird/dev/bazel-demo/other_usecases/bazel/resolved-repos-streamlined/WORKSPACE:92:1",
        "original_attributes": {
            "name": "com_google_protobuf_javalite",
            "urls": [
                "https://github.com/google/protobuf/archive/javalite.zip",
            ],
            "strip_prefix": "protobuf-javalite",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://github.com/google/protobuf/archive/javalite.zip",
                    ],
                    "sha256": "757038e6363ec3ad9df4f9548105289767e03f8c1efb000181cafa16ccdf2e69",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "protobuf-javalite",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "com_google_protobuf_javalite",
                },
                "output_tree_hash": "0943c2fe2fb61453316aab0eae5ace9fe4dac60ee5cbbed7d76d5fb9b41fa53d",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remote_coverage_tools' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /DEFAULT.WORKSPACE.SUFFIX:11:1",
        "original_attributes": {
            "name": "remote_coverage_tools",
            "urls": [
                "https://mirror.bazel.build/bazel_coverage_output_generator/releases/coverage_output_generator-v2.1.zip",
            ],
            "sha256": "96ac6bc9b9fbc67b532bcae562da1642409791e6a4b8e522f04946ee5cc3ff8e",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/bazel_coverage_output_generator/releases/coverage_output_generator-v2.1.zip",
                    ],
                    "sha256": "96ac6bc9b9fbc67b532bcae562da1642409791e6a4b8e522f04946ee5cc3ff8e",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remote_coverage_tools",
                },
                "output_tree_hash": "a021aeb7dfe67e7a2bb584ae6cfaaff48068b302c3b972d0d5a2cb068640531b",
            },
        ],
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "bootclasspath",
            "actual": "@local_jdk//:bootclasspath",
        },
        "native": "bind(name = \"bootclasspath\", actual = \"@local_jdk//:bootclasspath\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "extclasspath",
            "actual": "@local_jdk//:extdir",
        },
        "native": "bind(name = \"extclasspath\", actual = \"@local_jdk//:extdir\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "extdir",
            "actual": "@local_jdk//:extdir",
        },
        "native": "bind(name = \"extdir\", actual = \"@local_jdk//:extdir\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jar",
            "actual": "@local_jdk//:jar",
        },
        "native": "bind(name = \"jar\", actual = \"@local_jdk//:jar\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "java",
            "actual": "@local_jdk//:java",
        },
        "native": "bind(name = \"java\", actual = \"@local_jdk//:java\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "javac",
            "actual": "@local_jdk//:javac",
        },
        "native": "bind(name = \"javac\", actual = \"@local_jdk//:javac\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jdk",
            "actual": "@local_jdk//:jdk",
        },
        "native": "bind(name = \"jdk\", actual = \"@local_jdk//:jdk\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jdk-default",
            "actual": "@local_jdk//:jdk",
        },
        "native": "bind(name = \"jdk-default\", actual = \"@local_jdk//:jdk\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jni_header",
            "actual": "@local_jdk//:jni_header",
        },
        "native": "bind(name = \"jni_header\", actual = \"@local_jdk//:jni_header\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jni_md_header-darwin",
            "actual": "@local_jdk//:jni_md_header-darwin",
        },
        "native": "bind(name = \"jni_md_header-darwin\", actual = \"@local_jdk//:jni_md_header-darwin\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jni_md_header-freebsd",
            "actual": "@local_jdk//:jni_md_header-freebsd",
        },
        "native": "bind(name = \"jni_md_header-freebsd\", actual = \"@local_jdk//:jni_md_header-freebsd\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jni_md_header-linux",
            "actual": "@local_jdk//:jni_md_header-linux",
        },
        "native": "bind(name = \"jni_md_header-linux\", actual = \"@local_jdk//:jni_md_header-linux\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jni_md_header-openbsd",
            "actual": "@local_jdk//:jni_md_header-openbsd",
        },
        "native": "bind(name = \"jni_md_header-openbsd\", actual = \"@local_jdk//:jni_md_header-openbsd\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jre",
            "actual": "@local_jdk//:jre",
        },
        "native": "bind(name = \"jre\", actual = \"@local_jdk//:jre\")",
    },
    {
        "original_rule_class": "bind",
        "original_attributes": {
            "name": "jre-default",
            "actual": "@local_jdk//:jre",
        },
        "native": "bind(name = \"jre-default\", actual = \"@local_jdk//:jre\")",
    },
    {
        "original_rule_class": "new_local_repository",
        "original_attributes": {
            "name": "local_jdk",
            "path": "/Users/plaird/dev/sfdc-bazel/tools/jdk/Darwin/openjdk_11.0.1_x64",
            "build_file": "/var/tmp/_bazel_plaird/install/8ee987d32e94b9a7b51ef6034faefef4/jdk.BUILD",
        },
        "native": "new_local_repository(name = \"local_jdk\", path = \"/Users/plaird/dev/sfdc-bazel/tools/jdk/Darwin/openjdk_11.0.1_x64\", build_file = __embedded_dir__ + \"/\" + \"jdk.BUILD\")",
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remote_java_tools_darwin' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:305:1",
        "original_attributes": {
            "name": "remote_java_tools_darwin",
            "urls": [
                "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_darwin-v7.0.zip",
                "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_darwin-v7.0.zip",
            ],
            "sha256": "373a4226906ae9ba908550da16e133c4cd1f01b8973af82b9a2eb6903cb4d645",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_darwin-v7.0.zip",
                        "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_darwin-v7.0.zip",
                    ],
                    "sha256": "373a4226906ae9ba908550da16e133c4cd1f01b8973af82b9a2eb6903cb4d645",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remote_java_tools_darwin",
                },
                "output_tree_hash": "6a1274bb378cd31f3c01309fe031e1167eded56f10a1663e33319b1d09eb2697",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remote_java_tools_linux' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:283:1",
        "original_attributes": {
            "name": "remote_java_tools_linux",
            "urls": [
                "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_linux-v7.0.zip",
                "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_linux-v7.0.zip",
            ],
            "sha256": "3ff465e82954a70f49982610dd63f6f651beaa83c707dd637870b0e41cdcd2f0",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_linux-v7.0.zip",
                        "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_linux-v7.0.zip",
                    ],
                    "sha256": "3ff465e82954a70f49982610dd63f6f651beaa83c707dd637870b0e41cdcd2f0",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remote_java_tools_linux",
                },
                "output_tree_hash": "078d6939f452c18f7e157e36ced2fc741f87bb41459d15d2141cb1e543227a71",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remote_java_tools_windows' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:294:1",
        "original_attributes": {
            "name": "remote_java_tools_windows",
            "urls": [
                "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_windows-v7.0.zip",
                "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_windows-v7.0.zip",
            ],
            "sha256": "11d90a147919e74d11870cdd58c4ee5de3062c08d11b16aa72d3f3bbfa9497a0",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/bazel_java_tools/releases/javac11/v7.0/java_tools_javac11_windows-v7.0.zip",
                        "https://github.com/bazelbuild/java_tools/releases/download/javac11-v7.0/java_tools_javac11_windows-v7.0.zip",
                    ],
                    "sha256": "11d90a147919e74d11870cdd58c4ee5de3062c08d11b16aa72d3f3bbfa9497a0",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remote_java_tools_windows",
                },
                "output_tree_hash": "e19aaaf567a4ba900cd3fc1ae86e150f3328ee255d799e9d8705394fcd09de36",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk10_linux' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:183:1",
        "original_attributes": {
            "name": "remotejdk10_linux",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-linux_x64-allmodules.tar.gz",
            ],
            "sha256": "57fad3602e74c79587901d6966d3b54ef32cb811829a2552163185d5064fe9b5",
            "strip_prefix": "zulu10.2+3-jdk10.0.1-linux_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-linux_x64-allmodules.tar.gz",
                    ],
                    "sha256": "57fad3602e74c79587901d6966d3b54ef32cb811829a2552163185d5064fe9b5",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu10.2+3-jdk10.0.1-linux_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk10_linux",
                },
                "output_tree_hash": "b714a0289904226bbe7719bdca945c8f26fdf78e63773b6fe960249e912f7044",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk10_linux_aarch64' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:221:1",
        "original_attributes": {
            "name": "remotejdk10_linux_aarch64",
            "urls": [
                "https://mirror.bazel.build/openjdk.linaro.org/releases/jdk10-server-release-1804.tar.xz",
                "http://openjdk.linaro.org/releases/jdk10-server-release-1804.tar.xz",
            ],
            "sha256": "b7098b7aaf6ee1ffd4a2d0371a0be26c5a5c87f6aebbe46fe9a92c90583a84be",
            "strip_prefix": "jdk10-server-release-1804",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk.linaro.org/releases/jdk10-server-release-1804.tar.xz",
                        "http://openjdk.linaro.org/releases/jdk10-server-release-1804.tar.xz",
                    ],
                    "sha256": "b7098b7aaf6ee1ffd4a2d0371a0be26c5a5c87f6aebbe46fe9a92c90583a84be",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "jdk10-server-release-1804",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk10_linux_aarch64",
                },
                "output_tree_hash": "869e1b005aeb6cecb1ff8e2292ef31ddfce995db7e9883a1f6f8be14801acf47",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk10_macos' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:195:1",
        "original_attributes": {
            "name": "remotejdk10_macos",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-macosx_x64-allmodules.tar.gz",
            ],
            "sha256": "e669c9a897413d855b550b4e39d79614392e6fb96f494e8ef99a34297d9d85d3",
            "strip_prefix": "zulu10.2+3-jdk10.0.1-macosx_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-macosx_x64-allmodules.tar.gz",
                    ],
                    "sha256": "e669c9a897413d855b550b4e39d79614392e6fb96f494e8ef99a34297d9d85d3",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu10.2+3-jdk10.0.1-macosx_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk10_macos",
                },
                "output_tree_hash": "fc0d5838a0ed6e018a6a22b33dd011a8941e65990a6be3d2362dffda8733d40e",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk10_win' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:207:1",
        "original_attributes": {
            "name": "remotejdk10_win",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-win_x64-allmodules.zip",
            ],
            "sha256": "c39e7700a8d41794d60985df5a20352435196e78ecbc6a2b30df7be8637bffd5",
            "strip_prefix": "zulu10.2+3-jdk10.0.1-win_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu10.2+3-jdk10.0.1/zulu10.2+3-jdk10.0.1-win_x64-allmodules.zip",
                    ],
                    "sha256": "c39e7700a8d41794d60985df5a20352435196e78ecbc6a2b30df7be8637bffd5",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu10.2+3-jdk10.0.1-win_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk10_win",
                },
                "output_tree_hash": "756c25322349559a735471501683cbe713dc2f8b8f8309d22d5c14f5318e4bd0",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk11_linux' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:235:1",
        "original_attributes": {
            "name": "remotejdk11_linux",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-linux_x64.tar.gz",
            ],
            "sha256": "232b1c3511f0d26e92582b7c3cc363be7ac633e371854ca2f2e9f2b50eb72a75",
            "strip_prefix": "zulu11.2.3-jdk11.0.1-linux_x64",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-linux_x64.tar.gz",
                    ],
                    "sha256": "232b1c3511f0d26e92582b7c3cc363be7ac633e371854ca2f2e9f2b50eb72a75",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu11.2.3-jdk11.0.1-linux_x64",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk11_linux",
                },
                "output_tree_hash": "09b1584f92b66c75bf10c76c016c158925bed0453f77456ca78d056a71cd605e",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk11_linux_aarch64' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:247:1",
        "original_attributes": {
            "name": "remotejdk11_linux_aarch64",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu11.31.15-ca-jdk11.0.3/zulu11.31.15-ca-jdk11.0.3-linux_aarch64.tar.gz",
            ],
            "sha256": "3b0d91611b1bdc4d409afcf9eab4f0e7f4ae09f88fc01bd9f2b48954882ae69b",
            "strip_prefix": "zulu11.31.15-ca-jdk11.0.3-linux_aarch64",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu11.31.15-ca-jdk11.0.3/zulu11.31.15-ca-jdk11.0.3-linux_aarch64.tar.gz",
                    ],
                    "sha256": "3b0d91611b1bdc4d409afcf9eab4f0e7f4ae09f88fc01bd9f2b48954882ae69b",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu11.31.15-ca-jdk11.0.3-linux_aarch64",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk11_linux_aarch64",
                },
                "output_tree_hash": "3229e1f66676f7029a1da630943c34cffa199fa13639c9a9cd88d6cb31fe135a",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk11_macos' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:259:1",
        "original_attributes": {
            "name": "remotejdk11_macos",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-macosx_x64.tar.gz",
            ],
            "sha256": "1edf366ee821e5db8e348152fcb337b28dfd6bf0f97943c270dcc6747cedb6cb",
            "strip_prefix": "zulu11.2.3-jdk11.0.1-macosx_x64",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-macosx_x64.tar.gz",
                    ],
                    "sha256": "1edf366ee821e5db8e348152fcb337b28dfd6bf0f97943c270dcc6747cedb6cb",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu11.2.3-jdk11.0.1-macosx_x64",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk11_macos",
                },
                "output_tree_hash": "609e6c7e3ef398bdb58f9266169bb12dafc585fef591317b545c08070bf56ca1",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk11_win' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:271:1",
        "original_attributes": {
            "name": "remotejdk11_win",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-win_x64.zip",
            ],
            "sha256": "8e1e2b8347de6746f3fd1538840dd643201533ab113abc4ed93678e342d28aa3",
            "strip_prefix": "zulu11.2.3-jdk11.0.1-win_x64",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu11.2.3-jdk11.0.1/zulu11.2.3-jdk11.0.1-win_x64.zip",
                    ],
                    "sha256": "8e1e2b8347de6746f3fd1538840dd643201533ab113abc4ed93678e342d28aa3",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu11.2.3-jdk11.0.1-win_x64",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk11_win",
                },
                "output_tree_hash": "90ff0b507bbec499e9bbc867f6456a2901e73cacb1003a90adbad810a49ba412",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk_linux' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:131:1",
        "original_attributes": {
            "name": "remotejdk_linux",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-linux_x64-allmodules.tar.gz",
            ],
            "sha256": "f27cb933de4f9e7fe9a703486cf44c84bc8e9f138be0c270c9e5716a32367e87",
            "strip_prefix": "zulu9.0.7.1-jdk9.0.7-linux_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-linux_x64-allmodules.tar.gz",
                    ],
                    "sha256": "f27cb933de4f9e7fe9a703486cf44c84bc8e9f138be0c270c9e5716a32367e87",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu9.0.7.1-jdk9.0.7-linux_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk_linux",
                },
                "output_tree_hash": "f0797dd509408aec532df0d8f93d4beb15166267fc4f254cc6e1cec7e75334a7",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk_linux_aarch64' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:169:1",
        "original_attributes": {
            "name": "remotejdk_linux_aarch64",
            "urls": [
                "https://mirror.bazel.build/openjdk.linaro.org/releases/jdk9-server-release-1708.tar.xz",
                "http://openjdk.linaro.org/releases/jdk9-server-release-1708.tar.xz",
            ],
            "sha256": "72e7843902b0395e2d30e1e9ad2a5f05f36a4bc62529828bcbc698d54aec6022",
            "strip_prefix": "jdk9-server-release-1708",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk.linaro.org/releases/jdk9-server-release-1708.tar.xz",
                        "http://openjdk.linaro.org/releases/jdk9-server-release-1708.tar.xz",
                    ],
                    "sha256": "72e7843902b0395e2d30e1e9ad2a5f05f36a4bc62529828bcbc698d54aec6022",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "jdk9-server-release-1708",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk_linux_aarch64",
                },
                "output_tree_hash": "ecfef58ce3c153032fae0dec5884083464ccb10f8fc7ecd0711da02c0715969e",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk_macos' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:143:1",
        "original_attributes": {
            "name": "remotejdk_macos",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-macosx_x64-allmodules.tar.gz",
            ],
            "sha256": "404e7058ff91f956612f47705efbee8e175a38b505fb1b52d8c1ea98718683de",
            "strip_prefix": "zulu9.0.7.1-jdk9.0.7-macosx_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-macosx_x64-allmodules.tar.gz",
                    ],
                    "sha256": "404e7058ff91f956612f47705efbee8e175a38b505fb1b52d8c1ea98718683de",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu9.0.7.1-jdk9.0.7-macosx_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk_macos",
                },
                "output_tree_hash": "b6328273f948385883454edd5e67c8888a70b93dd3674c8c119e1722167108b0",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'remotejdk_win' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:155:1",
        "original_attributes": {
            "name": "remotejdk_win",
            "urls": [
                "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-win_x64-allmodules.zip",
            ],
            "sha256": "e738829017f107e7a7cd5069db979398ec3c3f03ef56122f89ba38e7374f63ed",
            "strip_prefix": "zulu9.0.7.1-jdk9.0.7-win_x64-allmodules",
            "build_file": "@local_jdk//:BUILD.bazel",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/openjdk/azul-zulu-9.0.7.1-jdk9.0.7/zulu9.0.7.1-jdk9.0.7-win_x64-allmodules.zip",
                    ],
                    "sha256": "e738829017f107e7a7cd5069db979398ec3c3f03ef56122f89ba38e7374f63ed",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "zulu9.0.7.1-jdk9.0.7-win_x64-allmodules",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file": "@local_jdk//:BUILD.bazel",
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "remotejdk_win",
                },
                "output_tree_hash": "f1855394faac6e484817b7a7da4745e7bbfca775f18ee2fdc9ef6e65f6cac907",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'rules_cc' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:327:1",
        "original_attributes": {
            "name": "rules_cc",
            "urls": [
                "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0.zip",
                "https://github.com/bazelbuild/rules_cc/archive/8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0.zip",
            ],
            "sha256": "1d4dbbd1e1e9b57d40bb0ade51c9e882da7658d5bfbf22bbd15b68e7879d761f",
            "strip_prefix": "rules_cc-8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0.zip",
                        "https://github.com/bazelbuild/rules_cc/archive/8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0.zip",
                    ],
                    "sha256": "1d4dbbd1e1e9b57d40bb0ade51c9e882da7658d5bfbf22bbd15b68e7879d761f",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "rules_cc-8bd6cd75d03c01bb82561a96d9c1f9f7157b13d0",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "rules_cc",
                },
                "output_tree_hash": "9fec28bc6b938c817477a36026d3f87aed39f38da4a14c6755233b061d913de1",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'rules_java' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:315:1",
        "original_attributes": {
            "name": "rules_java",
            "urls": [
                "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
                "https://github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
            ],
            "sha256": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
            "strip_prefix": "rules_java-7cf3cefd652008d0a64a419c34c13bdca6c8f178",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
                        "https://github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
                    ],
                    "sha256": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "rules_java-7cf3cefd652008d0a64a419c34c13bdca6c8f178",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "rules_java",
                },
                "output_tree_hash": "00a0f1231dacff0b0cea3886200e0158c67a3600068275da14120f5434f83b5e",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'rules_proto' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/utils.bzl:201:9\n - /DEFAULT.WORKSPACE.SUFFIX:339:1",
        "original_attributes": {
            "name": "rules_proto",
            "urls": [
                "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
                "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
            ],
            "sha256": "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
            "strip_prefix": "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "",
                    "urls": [
                        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
                        "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
                    ],
                    "sha256": "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "rules_proto",
                },
                "output_tree_hash": "4f74a84e9684fc73c48656a9a6c60bdfaed2cabdf5dc7d21da7ae2ee78c7efa3",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
        "definition_information": "Call stack for the definition of repository 'android_tools' which is a http_archive (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/build_defs/repo/http.bzl:296:16):\n - <builtin>\n - /DEFAULT.WORKSPACE.SUFFIX:371:1",
        "original_attributes": {
            "name": "android_tools",
            "url": "https://mirror.bazel.build/bazel_android_tools/android_tools_pkg-0.14.tar.gz",
            "sha256": "a3a951838448483e7af25afd10671b266cc6283104b4a2a427d31cac12cf0912",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                "attributes": {
                    "url": "https://mirror.bazel.build/bazel_android_tools/android_tools_pkg-0.14.tar.gz",
                    "urls": [],
                    "sha256": "a3a951838448483e7af25afd10671b266cc6283104b4a2a427d31cac12cf0912",
                    "netrc": "",
                    "canonical_id": "",
                    "strip_prefix": "",
                    "type": "",
                    "patches": [],
                    "patch_tool": "",
                    "patch_args": [
                        "-p0",
                    ],
                    "patch_cmds": [],
                    "patch_cmds_win": [],
                    "build_file_content": "",
                    "workspace_file_content": "",
                    "name": "android_tools",
                },
                "output_tree_hash": "e826feef6e130955e1f725dcc37700c4f732007f523137dcb84351a57c9e7685",
            },
        ],
    },
    {
        "original_rule_class": "local_config_platform",
        "original_attributes": {
            "name": "local_config_platform",
        },
        "native": "local_config_platform(name = 'local_config_platform')",
    },
    {
        "original_rule_class": "local_repository",
        "original_attributes": {
            "name": "platforms",
            "path": "/var/tmp/_bazel_plaird/install/8ee987d32e94b9a7b51ef6034faefef4/platforms",
        },
        "native": "local_repository(name = \"platforms\", path = __embedded_dir__ + \"/\" + \"platforms\")",
    },
    {
        "original_rule_class": "@bazel_tools//tools/osx:xcode_configure.bzl%xcode_autoconf",
        "definition_information": "Call stack for the definition of repository 'local_config_xcode' which is a xcode_autoconf (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/osx/xcode_configure.bzl:265:18):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/osx/xcode_configure.bzl:276:5\n - /DEFAULT.WORKSPACE.SUFFIX:414:1",
        "original_attributes": {
            "name": "local_config_xcode",
            "xcode_locator": "@bazel_tools//tools/osx:xcode_locator.m",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/osx:xcode_configure.bzl%xcode_autoconf",
                "attributes": {
                    "name": "local_config_xcode",
                    "xcode_locator": "@bazel_tools//tools/osx:xcode_locator.m",
                },
                "output_tree_hash": "14987e41fdd4a250d7e1e4b6c02a0c9a9e871a2e994bb0083999cfcbffde0964",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/sh:sh_configure.bzl%sh_config",
        "definition_information": "Call stack for the definition of repository 'local_config_sh' which is a sh_config (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/sh/sh_configure.bzl:72:13):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/sh/sh_configure.bzl:83:5\n - /DEFAULT.WORKSPACE.SUFFIX:417:1",
        "original_attributes": {
            "name": "local_config_sh",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/sh:sh_configure.bzl%sh_config",
                "attributes": {
                    "name": "local_config_sh",
                },
                "output_tree_hash": "e36855460b514225eac75f4abe2cb992c5455b7077a9028d213d269d11490744",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf",
        "definition_information": "Call stack for the definition of repository 'local_config_cc' which is a cc_autoconf (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/cpp/cc_configure.bzl:143:15):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/cpp/cc_configure.bzl:179:5\n - /DEFAULT.WORKSPACE.SUFFIX:421:1",
        "original_attributes": {
            "name": "local_config_cc",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf",
                "attributes": {
                    "name": "local_config_cc",
                },
                "output_tree_hash": "f832b4a435901d0285bbafade003ed98d7d1c0867d7a928955453c532c91e9d1",
            },
        ],
    },
    {
        "original_rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf_toolchains",
        "definition_information": "Call stack for the definition of repository 'local_config_cc_toolchains' which is a cc_autoconf_toolchains (rule definition at /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/cpp/cc_configure.bzl:79:26):\n - <builtin>\n - /private/var/tmp/_bazel_plaird/85ed75852b8f684ec7310f0ee91c4ec4/external/bazel_tools/tools/cpp/cc_configure.bzl:178:5\n - /DEFAULT.WORKSPACE.SUFFIX:421:1",
        "original_attributes": {
            "name": "local_config_cc_toolchains",
        },
        "repositories": [
            {
                "rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf_toolchains",
                "attributes": {
                    "name": "local_config_cc_toolchains",
                },
                "output_tree_hash": "8d654f9b267b79cc4f6676ddeacafa62c04b6925c7a9a7a218439a200df47382",
            },
        ],
    },
    {
        "original_rule_class": "register_toolchains",
        "original_attributes": {
            "name": "//external/register_toolchains",
            "*args": [
                "@bazel_tools//tools/jdk:all",
                "@bazel_tools//tools/python:autodetecting_toolchain",
                "@local_config_sh//:local_sh_toolchain",
                "@local_config_cc_toolchains//:all",
            ],
        },
        "native": "register_toolchains(\"@bazel_tools//tools/jdk:all\", \"@bazel_tools//tools/python:autodetecting_toolchain\", \"@local_config_sh//:local_sh_toolchain\", \"@local_config_cc_toolchains//:all\")",
    },
    {
        "original_rule_class": "register_execution_platforms",
        "original_attributes": {
            "name": "//external/register_execution_platforms",
            "*args": [],
        },
        "native": "register_execution_platforms()",
    },
]
