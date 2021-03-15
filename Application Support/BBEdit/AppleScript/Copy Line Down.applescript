# Copies selected lines down and moves selection to the new lines.
tell application "BBEdit"
	set start_line to startLine of selection
	set end_line to endLine of selection
	tell window 1
		set line_data to contents of lines start_line thru end_line
		set copy_offset to length of line_data
		
		try
			set testChar to last character of line_data
		on error
			set testChar to ""
		end try
		
		if (linefeed ≠ testChar) then
			make new line at line end_line
		end if
		
		select insertion point before line (end_line + 1)
		set selection to line_data
	end tell
end tell