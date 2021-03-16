try
	tell application "BBEdit"
		find "^[^a-z\\n]+$(?=\\n\\n)" searching in text of front text window options {search mode:grep, extend selection:false, case sensitive:true, backwards:true} with selecting match
	end tell
on error
	beep
end try