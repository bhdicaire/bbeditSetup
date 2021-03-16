#!/bin/sh

# Test npm, eslint are available
# If not output infos

# Test bbresults is available
# If not output instruction

# map file,line,col,type,msg from eslint compact format
FORMAT_COMPACT="(?P<file>.+?): line (?P<line>\d+), (col (?P<col>\d+),)? (?P<type>[a-zA-z]+) - (?P<msg>.*)$"

# determine parent directory of file
DIR=$(dirname "${BB_DOC_PATH}")

# move to current directory to provide context for npm
cd $DIR

# Run eslint in npm project
RESPONSE=$($(npm bin)/eslint $BB_DOC_PATH --format compact)

LINECOUNT=$(echo "${RESPONSE}" | wc -l)

# zero lines means my js is eslint perfect
if [ $LINECOUNT -gt 0 ]
then
	# head (get first line only)
	# grep -c (get the count of lines starting with: BB_DOC_PATH)
	RESULT=$(echo "${RESPONSE}" | head -n 1 | grep -c "^$BB_DOC_PATH")

	if [ $RESULT -eq 1 ]
	then
		# expected eslint output - pass it to bbresults
		echo "${RESPONSE}" | bbresults --pattern "$FORMAT_COMPACT"

	else
		# unexpected output - pass it to STDOUT
		echo "${RESPONSE}"

	fi
fi
