(* 
Adapted from Dr Drang's Markdown Reference Link
http://www.leancrew.com/all-this/2012/08/markdown-reference-links-in-bbedit/

Rather than relying on the dialog box (I'll nearly always have the URL in the clipboard, 
and couldn't find a way to paste into the AppleScript dialog box...) this uses 
the clipboard contents as the default option
*)

set clipboardURL to "" & (do shell script "pbpaste") & ""
set myURL to the text returned of (display dialog "URL:" default answer clipboardURL)

tell application "BBEdit"
	set myText to contents of front document
	set myRef to do shell script "~/bin/bbstdin " & quoted form of myText & " | ~/bin/nextreflink"
	
	if length of selection is 0 then
		-- Add link with empty text and set the cursor between the brackets.
		set curPt to characterOffset of selection
		select insertion point before character curPt of front document
		set selection to "[][" & myRef & "]"
		select insertion point after character curPt of front document
		
	else
		-- Turn selected text into link and put cursor after the reference.
		add prefix and suffix of selection prefix "[" suffix "]" & "[" & myRef & "]"
		select insertion point after last character of selection
	end if
	
	-- Add the reference at the bottom of the document and reset cursor.
	set savePt to selection
	select insertion point after last character of front document
	set selection to "[" & myRef & "]: " & myURL & return
	select savePt
end tell
