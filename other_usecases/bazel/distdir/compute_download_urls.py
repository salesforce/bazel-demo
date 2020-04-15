#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

# author: Peter Laird

import json
import os
import stat

# input file expected to be resolved_repos.py in current directory
from resolved_repos import resolved

# output file will be named build_distdir.sh
out_build_script_filename = "build_distdir.sh"
out_build_script = open(out_build_script_filename, "w")

# state flags
have_downloaded_coursier = False

for repo in resolved:
    rule_class = repo['original_rule_class']

    if rule_class.endswith('http_archive'):
        print('original_rule_class: ' + rule_class)
        if 'original_attributes' in repo:
            original_attrs = repo['original_attributes']
            url = 'not defined'
            if 'url' in original_attrs:
                url = original_attrs['url']
            elif 'urls' in original_attrs:
                url = original_attrs['urls'][0]
            else:
                continue

            filename = url[url.rfind("/")+1:]
            out_build_script.write("curl -L " + url + " > " + filename + "\n")

    elif rule_class.endswith('coursier_fetch'):
        # rules_jvm_external::maven_install uses coursier implicitly, and other tools may also use coursier
        if not have_downloaded_coursier:
            have_downloaded_coursier = True
            out_build_script.write("curl -L https://github.com/coursier/coursier/releases/download/v2.0.0-RC3-4/coursier.jar > coursier.jar\n")



out_build_script.close()
os.chmod(out_build_script_filename, stat.S_IREAD|stat.S_IWRITE|stat.S_IEXEC)
