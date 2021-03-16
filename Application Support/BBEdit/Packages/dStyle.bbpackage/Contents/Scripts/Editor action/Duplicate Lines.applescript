(*
	From Marc Liyanage: http://www.entropy.ch/
	Updated 2011-08-23 by Watts Martin to correct selection behavior
*)

set {l1, l2, start, len, selLines, selLinesLen} to getSelection()
local lineno, lastline, emptyLine, destinationline, lineCount, destination, selectionStart
local selectionEnd, selLinesLength
local win, mytext, mystring


tell application "BBEdit"
	tell window 1
		set emptyLine to false
		
		set destinationline to l2 + 1
		set lineCount to count lines
		set lastline to destinationline > lineCount
		if lastline then
			set destination to insertion point after line destinationline
			set contents of destination to return
			set AppleScript's text item delimiters to ""
			if length of selLines > 1 then
				set selLines to (characters 1 through ((length of selLines) - 1) of selLines) as string
				set start to start + 1
			else
				set emptyLine to true
			end if
		end if
		set destination to insertion point before line destinationline
		if emptyLine is not true then
			set contents of destination to selLines
		end if
		set selLinesLength to length of selLines
		set selectionStart to start + selLinesLength
		set selectionEnd to selectionStart + (len - 1)
		
		if len > 0 then
			select (characters selectionStart through selectionEnd)
		else
			select insertion point after character (selectionStart - 1)
		end if
		
	end tell
end tell


on getSelection()
	local l1, l2, start, len, selLines, selLinesLen
	tell application "BBEdit"
		tell selection
			set {l1, l2} to {startLine, endLine}
			set {start, len} to {characterOffset, length}
		end tell
		set selLines to my collectLines(window 1, l1, l2)
		set selLinesLen to length of selLines
	end tell
	return {l1, l2, start, len, selLines, selLinesLen}
	return {l1:l1, l2:l2, start:start, len:len, selLines:selLines, selLinesLen:selLinesLen}
end getSelection


on collectLines(win, l1, l2)
	local mytext, mystring
	set mytext to ""
	tell win
		repeat with l from l1 to l2
			set mytext to mytext & contents of line l & return
		end repeat
	end tell
	return mytext
end collectLines
