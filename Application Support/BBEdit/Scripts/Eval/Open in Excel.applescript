tell application "BBEdit"
	set filename to file of front window
end tell

tell application "/Applications/Microsoft Office 2011/Microsoft Excel.app"
	activate
	open filename
end tell