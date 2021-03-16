tell application "BBEdit"
	local x, myline, oldCount
	set x to startLine of selection
	if x = 1 then
		beep
		return
	end if
	tell text 1 of window 1
		set oldCount to count of lines
		set myline to contents of line x
		delete line x
		if x = 2 then
			if length of line 1 = 0 then
				make line at beginning with data "
"
			end if
			make line at beginning with data myline
		else
			if length of line (x - 2) = 0 then
				make line at line (x - 2) with data "
"
				make line at line (x - 1) with data myline
			else
				make line at line (x - 2) with data myline
			end if
		end if
		select insertion point before line (x - 1)
	end tell
end tell