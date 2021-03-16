-- Oliver Taylor (@olivertaylor, http://olivertaylor.net) - Dec 2013

tell application "BBEdit"
	find "^.*$" searching in text of front text window options {search mode:grep, backwards:true} with selecting match
	set selection to (grep substitution of "\\U&\\n")
	select insertion point after selection
end tell

