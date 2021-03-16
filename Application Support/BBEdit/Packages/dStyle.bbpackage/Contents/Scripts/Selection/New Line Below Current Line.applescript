-- Oliver Taylor (@olivertaylor, http://olivertaylor.net) - Jan 2013

try
	tell application "BBEdit"
		find "\\n|\\Z" searching in text of front text window options {search mode:grep, extend selection:false} with selecting match
		set selection to grep substitution of "\\n\\n"
		select insertion point before (character -1 of selection)
	end tell
on error
	beep
end try