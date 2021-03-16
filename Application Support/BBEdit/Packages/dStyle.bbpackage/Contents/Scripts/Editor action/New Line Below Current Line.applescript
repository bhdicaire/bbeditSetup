-- Oliver Taylor (@olivertaylor, http://olivertaylor.net) - June 2012

tell application "BBEdit"
	tell text of front text window
		set lineOfInsertionPoint to line (startLine of selection)
		set end of lineOfInsertionPoint to "" & return
		select insertion point after selection
	end tell
end tell