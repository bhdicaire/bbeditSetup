tell application "BBEdit"
	
	-- find out if we're at the beginning of the line
	tell the selection to set _column to startColumn
	
	if _column > 1 then
		
		find "(?<=[\\.\\?\\!\\-] |^)" searching in text of front text window options {search mode:grep, starting at top:false, wrap around:false, backwards:true, case sensitive:false, match words:false, extend selection:false} with selecting match
		
	end if
	
	find "(?<=[\\.\\?\\!\\-](?= )|$)" searching in text of front text window options {search mode:grep, starting at top:false, wrap around:false, backwards:false, case sensitive:false, match words:false, extend selection:true} with selecting match
	
end tell