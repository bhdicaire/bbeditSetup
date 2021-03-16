(*
  Author: Kendall Conrad of Angelwatt.com
  Name: Smart Newline
  Created: 2010-01-23
  Updated: 2012-04-21
  Description: Based on the current line it will generate different text for the context. It knows about indentation, code doc syntax, function starts, lists, HTML li
*)
tell application "BBEdit" to tell front window
	activate
	set lineNum to startLine of selection
	set leng to length of line lineNum
	-- Move cursor to end of line
	if leng > 0 then
		select insertion point after (character (leng) of line lineNum)
	end if
	
	-- Find leading whitespace
	set theResult to find "(^[\\s]*)" options {search mode:grep} searching in line (lineNum)
	-- Set text to the white space found
	set white to ""
	if found of theResult then
		set white to found text of theResult
	end if
	set wleng to length of white
	
	-- Define a tab based on user settings
	set aTab to tab
	if expand tabs then
		set spaceTab to ""
		repeat tab width times
			set spaceTab to spaceTab & space
		end repeat
		set aTab to spaceTab
	end if
	
	-- Are we starting a code doc?
	if (leng - wleng) ³ 3 then
		if (characters (wleng + 1) through (wleng + 3) of line lineNum as string) is equal to "/**" then
			set selection to return & white & " * " & return & white & " */"
			select insertion point after line (lineNum + 1)
			return
		end if
	end if
	
	-- Are we starting a code doc?
	if (leng - wleng) ³ 2 then
		if (characters (wleng + 1) through (wleng + 2) of line lineNum as string) is equal to "/*" then
			set selection to return & white & " * " & return & white & " */"
			select insertion point after line (lineNum + 1)
			return
		end if
	end if
	
	-- Check for lists
	set theResult to find "^\\s*[\\*#>\\+\\-]+([\\w ]*)" options {search mode:grep} searching in (line lineNum)
	if found of theResult then
		set preFind to find "[\\*#>\\+\\-]+" options {search mode:grep} searching in (line lineNum)
		set _char to found text of preFind
		set selection to return & white & _char & " "
		select insertion point after line (lineNum + 1)
		return
	end if
	
	-- Check for numbered list: (1. goes to 2.), (2.5 goes to 2.6)
	set theResult to find "^\\s*([\\d]+\\.)" options {search mode:grep} searching in (line lineNum)
	if found of theResult then
		set preNum to ""
		set preNumResult to find "([\\d]+\\.)+\\d" options {search mode:grep} searching in (line lineNum)
		if found of preNumResult then
			set preNum to characters 1 thru -2 of (found text of preNumResult)
		end if
		set numResult to find "[\\d]+\\. " options {search mode:grep} searching in (line lineNum)
		if found of numResult then
			set nextNum to ((characters 1 thru -3 of (found text of numResult)) as text) + 1
			set selection to return & white & preNum & nextNum & ". "
			select insertion point after line (lineNum + 1)
			return
		end if
	end if
	
	-- Check for <li
	if (leng - wleng) > 2 and (characters (wleng + 1) through (wleng + 3) of line lineNum as string) is equal to "<li" then
		-- Capture the whole li tag including attributes
		set liResult to find "<li[^>]*>" options {search mode:grep} searching in (line lineNum)
		if found of liResult then
			set selection to return & white & (found text of liResult) & "</li>"
		else
			-- just use a plain li tag
			set selection to return & white & "<li></li>"
		end if
		select (insertion point before character -5 of line (lineNum + 1))
		return
	end if
	
	-- Check for code block ({});
	if (leng - wleng) > 1 and (characters -2 thru -1 of line lineNum as string) is equal to "({" then
		set selection to return & white & aTab & return & white & "});"
		select insertion point after line (lineNum + 1)
		return
	end if
	
	-- Check for code block {}
	if (leng - wleng) ³ 1 and (character -1 of line lineNum as string) is equal to "{" then
		set selection to return & white & aTab & return & white & "}"
		select insertion point after line (lineNum + 1)
		return
	end if
	
	-- Check for code block ();
	if (leng - wleng) ³ 1 and (character -1 of line lineNum as string) is equal to "(" then
		set selection to return & white & aTab & return & white & ");"
		select insertion point after line (lineNum + 1)
		return
	end if
	
	-- Check for code block : (Python)
	if (leng - wleng) ³ 1 and (character -1 of line lineNum as string) is equal to ":" then
		set selection to return & white & aTab
		select insertion point after line (lineNum + 1)
		return
	end if
	
	-- Default: Insert a return plus the white space
	set selection to return & white
	select insertion point after selection
end tell