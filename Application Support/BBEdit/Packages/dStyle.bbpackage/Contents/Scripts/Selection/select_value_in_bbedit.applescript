(*

This BBEdit script selects the VALUE out of a Javascript(style) KEY: value record literal

Imagine a BBEdit selection of this line:

{"editor":"bbedit", "os": "macosx"}

Running this script will select "bbedit" (with quotes).

You could also select part of the line: selecting the following part of the line:

"os": "macosx"

will result in "macosx" being selected

*)

tell application "BBEdit"
  
	set findResult to find ":\\W*(.+?)[,\\}]" searching in selection options {search mode:grep} without selecting match
	
	set foundObject to findResult's found object
	
	set firstCharacter to foundObject's characterOffset
	set lastCharacter to (foundObject's length) + firstCharacter
	select (characters (firstCharacter + 1) thru (lastCharacter - 2)) of text of the front window
	-- ^^^ the text of the front window is IMPORTANT!!!
	
end tell