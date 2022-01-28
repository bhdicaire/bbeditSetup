(*
This Applescript lets you do a search starting at the top of the current document, NOT where the cursor is currently positioned
Author: Ryan Wilcox
Date: June 17, 2014
License: Public Domain
*)

property oldSearchString : "fish"

tell application "BBEdit"
	set res to display dialog "search current document for?" default answer oldSearchString
	
	if button returned of res is "OK" then
		set searchOpt to get current search options
		set searchOpt's starting at top to true
		
		set oldSearchString to text returned of res
		tell window 1
			
			set findRes to find (text returned of res) options searchOpt with selecting match
			
			if findRes's found is false then
				display dialog "not found"
			end if
		end tell
	end if
end tell