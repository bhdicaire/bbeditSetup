#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
@author: Kendall Conrad of Angelwatt.com
Created: 20091210
Updated: 20100125
Created for BBEdit, but not limited to it.
Accepts command line arguments
  1. abbreviation
  2. document type
'''
import sys
import os
import fileinput
import re
import zen_core

zen_core.insertion_point = '#INSERTION#'

# Some default values for arguments
abbr = 'div'         # The abbreviation to be expanded
doc_type = 'html'    # Document type: html, css, xml, etc.
exp_type = 'exp'     # Expansion (exp) or Wrap Expansion (wrap)
profile = 'xhtml'    # Profile name
# Other variables
argl = len(sys.argv) # How many arguments passed in
indent = ''          # Indentation where abbr starts
endWhite = ''        # Stores end white space

# 1st argument: zen abbreviation
if argl > 1: abbr = sys.argv[1]

# 2nd argument: document type
if argl > 2: doc_type = sys.argv[2]
if doc_type not in ['html', 'css', 'xml', 'xsl']: doc_type = 'html'

# 3rd argument: expansion type
if argl > 3: exp_type = sys.argv[3]
if exp_type not in ['exp', 'wrap']: exp_type = 'exp'

# 4th argument: profile name
if argl > 4: profile = sys.argv[4]

# Find starting white space
if (re.search('^(\s+)', abbr) != None):
  indent = re.search('^(\s+)', abbr).group(1)
# Capture any white space at end
if (re.search('(\s+)$', abbr) != None):
  endwhite = re.search('(\s+)$', abbr).group(1)
# Remove white space for processing, including any end white space
abbr = re.sub('(^\s+)|(\s+$)', '', abbr)

if abbr:
  if exp_type == 'exp':
    result = zen_core.expand_abbreviation(abbr, doc_type, profile)
  elif exp_type == 'wrap':
    try:   # Need to get selected text
      selFileDest = (os.path.expanduser("~")) # get home directory
      selFile = open(selFileDest+'/Library/Application Support/BBEdit/Scripts/zencoding_1_1_1/zen_selected_temp', 'r')
      selected = selFile.read()
    except IOError:
      selected = ''  # empty selection
    result = zen_core.wrap_with_abbreviation(abbr, selected, doc_type, profile)
  if result:
    # Add indentation to result
    result = re.sub(re.compile('^(.)', re.M), indent+r'\1', result)
    sys.stdout.write(result+endWhite)
