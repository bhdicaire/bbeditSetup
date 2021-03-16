set wordStart to "^|(?<!\\w[^\\w\\s])\\b(?=\\w)"
set wordEnd to "(?<=\\w)\\b(?![^\\w\\s]\\w)|$"

tell application "BBEdit"
	try
		-- Look at the next character after the insertion point
		set nextChar to find "[\\S\\s]" searching in text of front text window options {search mode:grep}
		-- if that character is one of the following...
		if found text of nextChar is in {" ", ".", ",", "?", "!", "\"", "Ó", ":", ";", "-", "}", "]", ")", "*", return} then
			-- Search for the beginning of the word
			find wordStart searching in text of front text window options {search mode:grep, backwards:true} with selecting match
			-- Then extend the selection to the end of the word
			find wordEnd searching in text of front text window options {search mode:grep, extend selection:true} with selecting match
		else
			-- Search for the end of the word
			find wordEnd searching in text of front text window options {search mode:grep} with selecting match
			-- Then extend the selection to the beginning of the word
			find wordStart searching in text of front text window options {search mode:grep, backwards:true, extend selection:true} with selecting match
		end if
	on error
		-- if nothing is found then assume we're at the end of the document and...
		-- Search for the beginning of the word
		find wordStart searching in text of front text window options {search mode:grep, backwards:true} with selecting match
		-- Then extend the selection to the end
		find wordEnd searching in text of front text window options {search mode:grep, extend selection:true} with selecting match
	end try
end tell