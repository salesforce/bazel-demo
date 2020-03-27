#
# Copyright (c) 2020, salesforce.com, inc.
# All rights reserved.
# Licensed under the BSD 3-Clause license.
# For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
#

# copies your Maven remote repo credentials from ~/.m2/settings.xml to ~/.netrc
# this is because some of the Bazel dependency tools use .netrc

from lxml import etree
import sys

def main(settings_file_name, netrc_file_name='/tmp/.netrc', repo_name='default', mode='a'):
    print('Writing credentials from', settings_file_name, ' to ', netrc_file_name)
    with open(settings_file_name) as settings_file:
        tree = etree.parse(settings_file)
        root = tree.getroot()
        for elem in root.iterfind('.//{http://maven.apache.org/SETTINGS/1.0.0}server'):
            server_id = elem.find('{http://maven.apache.org/SETTINGS/1.0.0}id').text
            if server_id == repo_name:
                server_username = elem.find('{http://maven.apache.org/SETTINGS/1.0.0}username').text
                server_password = elem.find('{http://maven.apache.org/SETTINGS/1.0.0}password').text
                with open(netrc_file_name, mode) as out:
                    out.writelines(
                        ['machine repo1.maven.org\n',
                         'login ', server_username, '\n',
                         'password ', server_password, '\n',
                         ])


if __name__ == "__main__":
    if len(sys.argv) < 4:
        print('Usage: python3 maven_to_netrc.py ~/.m2/settings.xml ~/.netrc default $MODE(a or w)')
        exit(-1)
    main(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
