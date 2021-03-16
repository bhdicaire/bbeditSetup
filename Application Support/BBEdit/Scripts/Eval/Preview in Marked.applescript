-- open current document in Marked.app

tell application "BBEdit"
	set filename to file of front window
end tell

tell application "Marked"
	activate
	open filename
end tell
