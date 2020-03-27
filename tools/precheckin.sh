#!/bin/bash

# Test all workspaces before commiting

#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

# allow env to override the bazel command for cases like bazelisk
if [ -z "$BAZEL_CMD" ]; then
  echo "BAZEL_CMD is unset, which means the default 'bazel' will be used."
  echo "If you have bazelisk as 'bazel' this is fine. But if not, some of the builds will fail."
  echo "Please export BAZEL_CMD=[your path to bazelisk] before running this script."
  READ WHERES_BAZELISK
  BAZEL_CMD=bazel
fi

if [ ! -f ".gitignore" ]; then
  echo "Please launch this script from the root of the repository."
  echo "  ./tools/precheckin.sh"
  exit 1
fi


cd main_usecases/java
for workspace in */ ; do
  cd $workspace
  echo "BUILDING $workspace"
  $BAZEL_CMD clean
  $BAZEL_CMD build //...
  $BAZEL_CMD test //...
  cd ..
done
cd ../..

cd other_usecases/java
for workspace in */ ; do
  cd $workspace
  if [ ! -f "WORKSPACE" ]; then
    for workspace in */ ; do
      cd $workspace
      echo "BUILDING $workspace"
      $BAZEL_CMD clean
      $BAZEL_CMD build //...
      $BAZEL_CMD test //...
      cd ..
    done
  else
    echo "BUILDING $workspace"
    $BAZEL_CMD clean
    $BAZEL_CMD build //...
    $BAZEL_CMD test //...
  fi
  cd ..
done
cd ../..
