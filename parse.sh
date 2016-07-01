#!/bin/bash

look_for=$1
from=$2
to=$3

function find_input {
  grep "$(echo "$look_for" | tr a-z A-Z)" # ignoring debit
}

function reformat_input {
  sed -nE $'s;([0-9]+)/([0-9]+)/([0-9]+),(.*),(.*),-£(.*),(.*);\\3/\\2/\\1 * '"${look_for}"$'\\\n    '"${from}"$'    £\\6\\\n    '"${to}"$'\\\n;p'
}

function reformat_debit_input {
  sed -nE $'s;([0-9]+)/([0-9]+)/([0-9]+),(.*),(.*),+£(.*),(.*);\\3/\\2/\\1 * '"${look_for}"$'\\\n    '"${to}"$'    £\\6\\\n    '"${from}"$'\\\n;p'
}

tee | find_input | reformat_input
