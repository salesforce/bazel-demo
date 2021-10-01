# bazel-demo
# build all examples

# This script assumes 'bazel' is mapped to bazelisk, as some repositories use older
# versions of Bazel intentionally.

function run_build {
  pushd .
  echo ""
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  echo $1
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  echo ""
  cd $1
  bazel build //...
  bazel test //...
  popd
}

# MAIN USE CASES

run_build "main_usecases/java/simplejava-mvnimport"
run_build "main_usecases/java/simplejava-mvninstall"
run_build "main_usecases/java/simplejava-mvnjar"

# OTHER USE CASES (BAZEL)


run_build "other_usecases/bazel/federation"
run_build "other_usecases/bazel/resolved-repos"
run_build "other_usecases/bazel/resolved-repos-streamlined"

# OTHER USE CASES (JAVA)

run_build "other_usecases/java/grpc-java"
run_build "other_usecases/java/java_alt_config_names"
run_build "other_usecases/java/java_implicit_deps"
run_build "other_usecases/java/java_import_dep"
run_build "other_usecases/java/java_invalid_srctree"
run_build "other_usecases/java/java_nonconform_srctree"
run_build "other_usecases/java/java-oneoneone"
run_build "other_usecases/java/multivariate_package"
run_build "other_usecases/java/proto-java"
run_build "other_usecases/java/samename_diffpaths"
run_build "other_usecases/java/selenium"
run_build "other_usecases/java/springboot/springboot_dupeclasses"
run_build "other_usecases/java/springboot/springboot_maveninstall"
