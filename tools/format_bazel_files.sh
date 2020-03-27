#!/bin/bash

#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

# format_bazel_files.sh
# Author: Peter Laird, Salesforce

# exit on error in the beginning
set -e

# color the command prompts
blk=$'\033[0;30m'
blue=$'\e[1;34m'

echo "${blk}This script will format all repo BUILD and .bzl files according to style standards."
echo ""
echo "NOTE: It requires that you have Go installed.  https://golang.org/doc/install"
echo ""

if [ ! -f ".gitignore" ]; then
  echo "${blue}Please launch this script from the root of the repo."
  echo "  ./tools/format_bazel_files.sh"
  echo "${blk}"
  exit 1
fi

echo "${blk}Before running, we will check that you have a clean Git workspace."
echo "Do not mix functional changes together with formatting changes in the same PR."
echo "Press Enter to continue..."
read MR_BOJANGLES
echo $blue

git status

echo ""
echo "${blk}Is your Git workspace clean? If not, press ctrl-c to bail now."
echo ""
echo "In the next step, we will make sure you have Go installed."
echo "If you do, we will install 'buildifer' if not already installed, which is the tool that does the formatting."
echo "Press Enter to continue..."
read TAMBOURINE_MAN
echo $blue

go version
go get github.com/bazelbuild/buildtools/buildifier
echo "buildifier installed"


# we are now installed and ready to format
# from here on out, we want to continue to the end to revert specific files
set +e

echo ""
echo "${blk}If the previous step didn't emit any errors, we are ready to do the formatting."
echo "Press Enter to continue..."
read VANDALS_STOLE_THE_HANDLE
echo $blue
echo "Running the formatter and auto linter..."

if [ -z "$GOPATH" ]; then
  export GOPATH=~/go
fi

find . -name BUILD | xargs $GOPATH/bin/buildifier
find . -name BUILD.bazel | xargs $GOPATH/bin/buildifier

find . -name BUILD | xargs $GOPATH/bin/buildifier --lint=fix
find . -name BUILD.bazel | xargs $GOPATH/bin/buildifier --lint=fix

find . -name '*.bzl' | xargs $GOPATH/bin/buildifier
echo "Formatter and auto linter done."

echo ""
echo "${blk}Now we will run the manual linter, which will show what issues remain in the files."
echo "They are informational and can be fixed manually if you wish."
echo "Press Enter to continue..."
read BLOWIN_IN_THE_WIND
echo $blue
find . -name BUILD | xargs $GOPATH/bin/buildifier --lint=warn
find . -name BUILD.bazel | xargs $GOPATH/bin/buildifier --lint=warn
find . -name '*.bzl' | xargs $GOPATH/bin/buildifier --lint=warn


echo ""
echo "${blk}Formatting complete. Review the changes files, commit, and submit a PR:"
echo ""
echo $blue
git status
echo "${blk}"
