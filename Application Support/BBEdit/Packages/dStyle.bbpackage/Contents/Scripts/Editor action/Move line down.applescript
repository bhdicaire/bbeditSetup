tell application "BBEdit"
	local x, myline
	set x to startLine of selection
	tell text 1 of window 1
		if x = (count of lines) then return
		set myline to contents of line x
		delete line x
		if length of line x = 0 then
			make line at line x with data "
"
			make line at line (x + 1) with data myline
		else
			make line at line x with data myline
			
		end if
		select insertion point before line (x + 1)
	end tell
end tell