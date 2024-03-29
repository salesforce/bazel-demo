# bazel-demo
# build all examples

# This script assumes 'bazel' is mapped to bazelisk, as some repositories use older
# versions of Bazel intentionally.

function run_clean {
  pushd .
  echo ""
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  echo $1
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  echo ""
  cd $1
  bazel clean
  popd
}

# MAIN USE CASES

run_clean "main_usecases/java/simplejava-mvnimport"
run_clean "main_usecases/java/simplejava-mvninstall"

# OTHER USE CASES (BAZEL)

# removed, they are not very useable

# OTHER USE CASES (JAVA)

run_clean "other_usecases/java/java_alt_config_names"
run_clean "other_usecases/java/java_autodeps"
run_clean "other_usecases/java/java_dangling_test"
run_clean "other_usecases/java/java_diffguavaversions"
run_clean "other_usecases/java/java_implicit_deps"
run_clean "other_usecases/java/java_import_dep"
run_clean "other_usecases/java/java_invalid_srctree"
run_clean "other_usecases/java/java_nonconform_srctree"
run_clean "other_usecases/java/java-oneoneone"
run_clean "other_usecases/java/java_rootbuildfile"
run_clean "other_usecases/java/multivariate_package"
run_clean "other_usecases/java/proto-java"
run_clean "other_usecases/java/samename_diffpaths"
run_clean "other_usecases/java/selenium"
run_clean "other_usecases/java/simplejava-mvnjar"
run_clean "other_usecases/java/springboot/springboot_dupeclasses"
run_clean "other_usecases/java/springboot/springboot_maveninstall"
