tell application "BBEdit"
	tell selection
		if its contents is equal to "" then
			set insertion to "`"
			
		else
			set insertion to "`" & selection & "`"
		end if
		
	end tell
	set the selection to insertion
end tell