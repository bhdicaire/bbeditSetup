-- Predictive completion for Fountain-formatted character names
-- Oliver Taylor (@olivertaylor) 2013-01-27

try
	tell application "BBEdit"
		set _character to find "^[ \\t]*\\n([ \\t]*)([^a-z\\n\\t]+)\\n([ \\t]*.+\\n)+$" searching in text of front text window options {search mode:grep, case sensitive:true, backwards:true}
		set selection to grep substitution of "\\n\\n\\1\\2\\n\\1"
		select insertion point after selection
	end tell
on error
	beep
end try