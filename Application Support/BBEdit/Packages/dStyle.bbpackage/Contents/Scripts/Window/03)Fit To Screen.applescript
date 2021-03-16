-- Resize active window to be a standard width and screen height on the left side

on run
    -- Check to see if multiple displays
    tell application "System Events"
        set d to count every desktop
    end tell
    
    -- Get screen dimensions (this won't work for multiple displays)
    tell application "Finder"
        set screenBounds to bounds of window of desktop
    end tell

    tell application "BBEdit"
        if files visible of text window 1 is true then
            set w to 1022
        else
            set w to 800
        end if
        
        if d > 1 then
            set h to 800
        else
            set h to item 4 of screenBounds
        end
    
        set bounds of text window 1 to {0, 45, w, h}
    end tell
end run