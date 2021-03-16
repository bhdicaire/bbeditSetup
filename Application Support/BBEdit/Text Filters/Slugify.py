#!/usr/bin/env python

import sys
import re

def slugify(text):
    slugifiedtext = ""
    temptext = text.lower().replace(" ", "-").strip()
    temptext = re.sub('[^0-9a-zA-Z\-]+', '', temptext)
    slugifiedtext = temptext
    return slugifiedtext

unslugifiedtext = sys.stdin.read()
sys.stdout.write(slugify(unslugifiedtext))