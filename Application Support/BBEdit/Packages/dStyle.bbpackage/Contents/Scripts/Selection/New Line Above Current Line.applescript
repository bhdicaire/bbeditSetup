(*
  Author: Kendall Conrad of Angelwatt.com
  Name: Open Line Up
  Created: 2010-01-18
  Updated: 2010-01-18
  Description: Creates a new line above the line currently on at appropriate indent level
*)

tell application "BBEdit" to tell front window
	activate
	set lineNum to startLine of selection
	set leng to length of line lineNum
	-- Move cursor to start of line
	if leng > 0 then
		select insertion point before (character 1 of line lineNum)
	end if
	-- Find leading whitespace
	set theResult to find "(^[\\s]*)" options {search mode:grep} searching in line (lineNum)
	-- Set text to the white space found
	set white to ""
	if found of theResult then
		set white to found text of theResult
	end if
	-- Insert a return plus the white space
	set selection to white & return
	select insertion point before (character -1 of selection)
end tell