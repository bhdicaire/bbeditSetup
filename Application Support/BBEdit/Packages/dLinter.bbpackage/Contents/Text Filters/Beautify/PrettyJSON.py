#!/usr/local/bin/python
import fileinput
import json

if __name__ == "__main__":
	jsonStr = ''

	for a_line in fileinput.input():
		jsonStr = jsonStr + a_line

	try:
		jsonObj = json.loads(jsonStr)
		print json.dumps(jsonObj, sort_keys=True, indent=2)
	except:
		print jsonStr.strip()
