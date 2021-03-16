(* Script to tile windows horizontally on a second monitor in BBEdit 

Requires perl screen to help determine screen bounds.
*)

(* Comment out display dialog and set the number of displays to avoid prompt *)
-- set numScreens to 2
set numScreens to button returned of (display dialog "How many monitors do you have?" buttons {"1", "2", "3"} default button "2")

set menubarHeight to 44

-- set a to path to application support from user domain
-- set p to POSIX path of a
set p to POSIX path of ((path to me as text) & "::")
set p to quoted form of p

set screens to {}
set theOutput to do shell script p & "screens.pl " & numScreens & " | sort"
log "screens.pl Output:"
log theOutput

if theOutput = "" then
	display dialog "Error gathering screen information. Please verify that screens.pl is located in the same directory as this script."
	return
end if

repeat with currLine in (paragraphs of theOutput)
	set fields to parseCSV(currLine as text)
	set screens to screens & {{item 1 of fields as number, item 2 of fields as number, item 3 of fields as number, item 4 of fields as number, item 5 of fields as text}}
end repeat

tell application "Finder"
	set desktopBounds to get bounds of window of desktop
	log "desktop window bounds: " & item 1 of desktopBounds & ", " & item 2 of desktopBounds & ", " & item 3 of desktopBounds & ", " & item 4 of desktopBounds
end tell

tell application "BBEdit"
	-- get front two windows
	set firstWin to get window 1
	set secondWin to get window 2
	set firstWinOrigin to get position of firstWin
	
	set firstWinScreen to my isOnScreen(firstWinOrigin, screens)
	log firstWinScreen
	
	if (firstWinScreen ≥ 0) then
		-- add one to firstWinScreen for applescript array indexing
		set firstWinScreen to firstWinScreen + 1
		
		-- calc bounds of first window
		set targetScreen to item firstWinScreen of screens
		log targetScreen
		
		set xTop to (item 4 of targetScreen)
		set yTop to (item 5 of targetScreen) + menubarHeight
		set xBottom to (((item 2 of targetScreen) / 2) + xTop)
		set yBottom to (yTop + (item 3 of targetScreen)) - menubarHeight
		
		log xTop & yTop & xBottom & yBottom
		set bounds of firstWin to {xTop, yTop, xBottom, yBottom}
		
		-- second window
		set xTop to xBottom
		-- yTop should be same
		set xBottom to xBottom + ((item 2 of targetScreen) / 2)
		-- yBottom should be same
		set bounds of secondWin to {xTop, yTop, xBottom, yBottom}
		
	else
		-- error
		display dialog "Error: Could not determin which screen window is on. Aborting script."
	end if
	
end tell

on parseCSV(theText)
	set {od, my text item delimiters} to {my text item delimiters, ","}
	set parsedText to text items of theText
	set my text item delimiters to od
	return parsedText
end parseCSV

on isOnScreen(winPosit, screens)
	log "Entering isOnScreen"
	
	repeat with currScreen in screens
		set x to item 1 of winPosit
		set y to item 2 of winPosit
		
		set xStart to item 4 of currScreen
		set xEnd to (xStart + (item 2 of currScreen))
		set yStart to item 5 of currScreen
		set yEnd to (yStart + (item 3 of currScreen))
		
		if (x ≥ xStart) and (x < xEnd) and (y ≥ yStart) and (y < yEnd) then
			log "Window is on screen " & item 1 of currScreen
			return item 1 of currScreen
		end if
		
	end repeat
	
	-- no bounding screen found...return error value
	return -1
end isOnScreen
