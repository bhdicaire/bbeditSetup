#! /usr/bin/env bash
#https://groups.google.com/d/msg/bbedit/sn0wsZxZxH4/dfXarmuKAgAJ

nl -n rz -w 2 \
| sed -E 's!^([0-9]+)[[:blank:]]+!\1. !g'