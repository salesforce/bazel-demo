/Users/plaird/bin/bazel build --override_repository=bazeljavasdk_aspect=/Users/plaird/dev/bazel-ls-eclipse/com.salesforce.b2eclipse.jdt.ls/resources --nobuild_event_binary_file_path_conversion --curses=no --color=yes --progress_in_terminal_title=no --noexperimental_run_validations --aspects=@bazeljavasdk_aspect//:intellij_info_bundled.bzl%intellij_info_aspect -k --output_groups=intellij-info-generic,intellij-info-java-direct-deps,intellij-resolve-java-direct-deps //projects/services/fruit-salad-service/fruit-salad:fruit-salad //projects/services/fruit-salad-service/fruit-salad:src/test/java/demo/salesforce/salad/FruitSaladTest 