#!/bin/sh
awk '{gsub(/\t|^|$/, "|"); print}'

