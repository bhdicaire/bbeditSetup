(*
  Smart Home Select
  Kendall Conrad of Angelwatt.com
  Acts like IDE home key along with selection. First will go to right before first visible character on line. Hit a second time will go to true home position of line.
  Created: 2010-08-05
  Updated: 2010-08-06
*)

tell application "BBEdit" to tell front window
	-- Accommodation for search windows
	if name = "Find" or name = "Pattern Playground" or name = "Multi-File Search" then
		tell application "System Events" to key code 126 using {shift down, command down}
		return
	end if
	-- Grab line number and offset of text cursor
	tell the selection to set {_n, _selectionstart} to {startLine, characterOffset}
	set _selectLength to length of (contents of selection as text)
	if (_selectLength) > 0 then
		set _selectionstart to _selectionstart + _selectLength
	end if
	-- Grab offset of line in the document and the contents of the line
	tell line _n to set {_linestart, _line} to {characterOffset, contents}
	set _cursor to _selectionstart - _linestart
	if _cursor = 0 then return
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
	-- Ensure smart is not past cursor
	if _smart > _cursor then set _smart to _cursor
	-- Check if smart position is where cursor is, if so select from start of line
	if _smart is _cursor or (_cursor - _selectLength = _smart) then
		select (characters (_selectionstart - _cursor) through (_selectionstart - 1))
	else -- Select from smart position
		select (characters (_selectionstart - _cursor + _smart) through (_selectionstart - 1))
	end if
end tell