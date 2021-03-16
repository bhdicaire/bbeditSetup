-- Converts selected text to inline markdown link using the URL stored in the clipboard 

set clipboardURL to "" & (do shell script "pbpaste") & ""

tell application "BBEdit"
	activate
	set anchortext to selection of text window 1
	set selection of text window 1 to "[" & anchortext & "](" & clipboardURL & ")"
end tell

