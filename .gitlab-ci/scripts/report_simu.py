# Copyright 2022 Thales DIS design services SAS
#
# Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
# You may obtain a copy of the License at https://solderpad.org/licenses/
#
# Original Author: Yannick Casamatta (yannick.casamatta@thalesgroup.com)

import re
from pprint import pprint
import yaml
import datetime
import sys

with open(str(sys.argv[1]), 'r') as f:
    log = f.read()

global_pass = "pass"

report = {'title': sys.argv[2],
          'description': sys.argv[3],
          'token': 'YC' + str(datetime.datetime.now().timestamp()).replace('.', ''),
          'status': "pass",
          'metrics': []
         }

pattern = re.compile(
    "^(?:\w{3}, \d{2} \w{3} \d{4} \d{2}:\d{2}:\d{2} INFO     )?Compiling (.*) : .*(tests\S*)$[\s\S]*?^(?:\w{3}, \d{2} \w{3} \d{4} \d{2}:\d{2}:\d{2} INFO     )?Found matching ISS: (\S*)$[\s\S]*?^(?:\w{3}, \d{2} \w{3} \d{4} \d{2}:\d{2}:\d{2} INFO     )?ISA (\S*)$[\s\S]*?^(?:\w{3}, \d{2} \w{3} \d{4} \d{2}:\d{2}:\d{2} INFO     )?\[(\w*)\]: (\d*) matched(?:, (\d*) mismatch)?$",
    re.MULTILINE)

list_of_tests = pattern.findall(log)

job_test_pass = 0
job_test_total = 0

metric = {'display_name': '',
          'type': 'table_status',
          'status': "pass",
          'value': []
         }

for i in list_of_tests:
    value = {}
    job_test_total += 1
    if i[4] == "PASSED":
        value['status'] = "pass"
        value['label'] = "PASS"
        job_test_pass += 1
    else:
        value['status'] = "fail"  # row level
        value['label'] = "FAIL"
        metric['status'] = "fail"  # table_status level
        report['status'] = "fail"  # job level
    value['col'] = []
    value['col'].append(i[3])  # isa
    value['col'].append(i[2])  # testbench
    value['col'].append(i[0])  # testsuite
    value['col'].append(i[1])  # test
    metric['value'].append(value)

report['metrics'].append(metric)

report['label'] = f'{job_test_pass}/{job_test_total}'

pprint(report)

filename = re.sub('[^\w\.\\\/]', '_', sys.argv[4])
print(filename)

with open(filename, 'w+') as f:
    yaml.dump(report, f)