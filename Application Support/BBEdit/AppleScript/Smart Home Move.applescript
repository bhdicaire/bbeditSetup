(*
  Smart Home Move
  Kendall Conrad of Angelwatt.com
  Acts like IDE home key. First will go to right before first visible character on line. Hit a second time will go to true home position of line.
  Created: 2010-07-31
  Updated: 2012-06-03
*)

tell application "BBEdit" to tell front window
	-- Accommodation for search windows
	if name = "Find" or name = "Pattern Playground" or name = "Multi-File Search" then
		tell application "System Events" to key code 126 using command down
		return
	end if
	-- Grab line number and offset of text cursor
	tell the selection to set {_n, _selectionstart} to {startLine, characterOffset}
	-- Grab offset of line in the document and the contents of the line
	tell line _n to set {_linestart, _line} to {characterOffset, contents}
	set _cursor to _selectionstart - _linestart
	set _smart to 0
	-- Go through content of line looking for smart home position
	set _len to count _line
	-- Ensure line is not empty
	if _len = 0 then return
	-- Traverse line to find first non-whitespace
	set _nbsp to ASCII character 202
	set theResult to find "(^[\\s" & _nbsp & "*#+-]*)" options {search mode:grep} searching in line _n
	if found of theResult then
		set _smart to length of (found text of theResult)
	end if
	-- Only true if there was no starting whitespace
	if _smart = 0 then
		set _smart to 1
		set _cursor to 1
	end if
	-- Check if not at smart position already
	if _cursor is not _smart then -- Go to smart home
		select insertion point after character _smart of line _n
	else -- Just go to start of line
		select insertion point before line _n
	end if
end tell