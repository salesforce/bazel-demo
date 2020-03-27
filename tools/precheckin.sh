#!/bin/bash

# Test all workspaces before commiting

#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

if [ ! -f ".gitignore" ]; then
  echo "Please launch this script from the root of the repository."
  echo "  ./tools/precheckin.sh"
  exit 1
fi

# allow env to override the bazel command for cases like bazelisk
if [ -z "$BAZEL_CMD" ]; then
  echo "BAZEL_CMD is unset, which means the default 'bazel' will be used."
  echo "If you have bazelisk as 'bazel' this is fine. But if not, some of the builds will fail."
  echo "Please export BAZEL_CMD=[your path to bazelisk] before running this script."
  READ WHERES_BAZELISK
  BAZEL_CMD=bazel
fi

if [ $# -gt 0 ]; then
  if [ "$1" = "clean" ]; then
    DOCLEAN="true"
  fi
fi
if [ -n "$DOCLEAN" ]; then
  echo "Clean mode is enabled; the script will clean each workspace before build/test."
else
  echo "Clean mode is not enabled; the script will not clean each workspace before build/test."
  echo "Pass the string 'clean' to the script to enable it."
fi

echo ""
echo "STARTING THE BUILDS"
echo ""

for topleveldir in *usecases ; do
  cd $topleveldir
  for workspaceFile in $(find . -name WORKSPACE) ; do
    workspaceDir=$(dirname $workspaceFile)
    echo "BUILDING $workspaceDir"
    
    pushd . > /dev/null
    cd $workspaceDir

    if [ -n "$DOCLEAN" ]; then
      $BAZEL_CMD clean
    fi
    $BAZEL_CMD build //...
    $BAZEL_CMD test //...

    popd > /dev/null
  done
  cd ..
done

echo ""
echo "BUILDS DONE. Check the output above for any broken builds."
echo ""
echo "REMINDER: if you changed any BUILD files, run ./tools/format_bazel_files.sh before committing."
echo ""
