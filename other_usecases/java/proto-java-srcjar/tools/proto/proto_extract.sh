#!/bin/bash
# Copyright (c) 2022, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

# Bazel utility for plucking one or more proto files from an input jar file.

working_dir=$(pwd)
javabase=$1
rule_name=$2
package_path=$3
rule_dir=$4
proto_jar=$5
first_file_arg=6

# setup the debug log file (if desired)
protoextract_rule_tmpdir=/tmp
if [ -z "${DEBUG_PROTOEXTRACT_RULE}" ]; then
    debugfile=/dev/null
else
    debugdir=$protoextract_rule_tmpdir/debug/protoextract
    mkdir -p $debugdir
    debugfile=$debugdir/${rule_name}.log
    echo "PROTO EXTRACT LOG: $debugfile"
fi
>$debugfile

# Compute path to jar utility
pushd . > /dev/null
cd $javabase/bin
jar_command=$(pwd)/jar
popd > /dev/null
echo "Jar command:" >> $debugfile
echo $jar_command >> $debugfile

proto_jar_name=$(basename $proto_jar)

# Debug output
echo "PROTO EXTRACT FOR BAZEL" >> $debugfile
echo "  working_dir     $working_dir  (build working directory)" >> $debugfile
echo "  rule_name       $rule_name    (name of the rule invocation)" >> $debugfile
echo "  package_path    $package_path (path of the rule invocation)" >> $debugfile
echo "  rule_dir        $rule_dir     (rule output dir)" >> $debugfile
echo "  javabase        $javabase     (relative path to the JDK)" >> $debugfile
echo "  jar_command     $jar_command  (path to the jar utility)" >> $debugfile
echo "  proto_jar       $proto_jar    (path to the jar of protos)" >> $debugfile
echo "  proto_jar_name  $proto_jar_name (filename of the jar of protos)" >> $debugfile
i=$first_file_arg
while [ "$i" -le "$#" ]; do
  eval "ofile=\${$i}"
  echo "  proto_file:      $ofile" >> $debugfile
  i=$((i + 1))
done
echo "" >> $debugfile

# Extract the proto jar file into the working directory.
# The proto_files passed into the rule will then refer to the extracted files on disk.
# (Note that this overextracts - it extracts all files from the jar but Bazel only
# allows the downstream rules to use what is identified in the proto_files attribute
# of proto_extract)
cp $proto_jar $rule_dir
pushd .
cd $rule_dir
$jar_command -xf $proto_jar_name
popd
