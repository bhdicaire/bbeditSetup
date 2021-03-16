-- this script transforms all your spaces into newlines

on RunFromBBEdit(rangeFromBBEdit)
	-- RunFromBBEdit is called from BBEdit when you select this script from
	-- the Text Filters submenu
	--
	-- I like putting the logic in this handler, which lets me easily test
	-- my script in AppleScript Editor before using it in a text filer
	-- like so
	(*
	on run
	    tell application "BBEdit" to set mySelection to selection
	    set output to RunFromBBEdit(mySelection)
	    display dialog output
        end run
        *)
	
	set textFromBBEdit to rangeFromBBEdit as string
	-- ^^^ BBEdit gives us a reference, like you get when
	-- you do "tell app "BBEdit" to get selection". We need
	-- to convert that into a string to process it in Applescript
	
	
	-- Now the body of the script where we turn every word into one line
	set oldDelim to AppleScript's text item delimiters
	set AppleScript's text item delimiters to " "
	set elements to every text item of textFromBBEdit
	
	set AppleScript's text item delimiters to return
	set output to elements as string
	set AppleScript's text item delimiters to oldDelim
	
	return output
	-- ^^^^ BBEdit expects a string, which it will then replace the selection with
end RunFromBBEdit

(*
on run (rangeFromBBEdit)
-- if you don't want/like a RunFromBBEdit method, you must have an explicit
-- run function. BBEdit will pass the range in as a parameter to the run handler (just as it did above)

	display dialog "I'm in the run handler"
	return "there"
end run
*)