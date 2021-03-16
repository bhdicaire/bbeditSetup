-- Balance for Prose Writers
-- Oliver Taylor (@olivertaylor, http://olivertaylor.net) - August 2012

tell application "BBEdit"
	
	-- if nothing is selected
	if length of selection = 0 then
		
		-- find the opening balancing-character, or the beginning of the line
		find "[\\\"Ò(\\[{\\<]|^" searching in text of front text window options {search mode:grep, backwards:true} with selecting match
		
		-- move to just after it
		select insertion point after selection
		
		-- find out if we're at the beginning of the line
		tell the selection to set _column to startColumn
		
		-- if not...
		if _column > 1 then
			
			-- then find everything between the balancing characters
			find "(?<=[\\\"Ò(\\[{\\<]).+?(?=[\\\"Ó)\\]}\\>])" searching in text of front text window options {search mode:grep} with selecting match
			
		else
			-- if you are at the beginning of the line error-out
			beep
		end if
		
		-- if something IS selected...	
	else
		
		-- find the opening balancing character
		find "[\\\"Ò(\\[{\\<]" searching in text of front text window options {search mode:grep, backwards:true} with selecting match
		
		-- move to just before it
		select insertion point before selection
		
		-- and select to the closing balancing character
		find "([\\\"Ó)\\]}\\>])" searching in text of front text window options {search mode:grep, extend selection:true} with selecting match
		
	end if
	
end tell