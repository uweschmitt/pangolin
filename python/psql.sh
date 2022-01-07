#!/bin/bash
#
# psql.sh
# Copyright (C) 2021 Uwe Schmitt <uwe.schmitt@id.ethz.ch>
#
# Distributed under terms of the MIT license.
#

set -e

# https://stackoverflow.com/questions/59895/
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd ${SCRIPT_DIR}

source .defaults

psql -h ${DBHOST} -p ${DBPORT} -U ${DBUSER} ${DATABASE}
