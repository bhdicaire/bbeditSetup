-- Emulate splitting a window vertically by opening the active document
-- in a new window and arranging both windows side by side

on run
    tell application "BBEdit"
        set w to text window 1
        set w1 to ID of w
        
        -- Calculate the bounds for source window
        -- bounds are left, top, right, bottom
        set b to bounds of w
        set x1 to (item 3 of b) + 4
        set y1 to (item 2 of b)
        set x2 to x1 + ((item 3 of b) - (item 1 of b))
        set y2 to (item 4 of b)
    
        -- Adjust for file list if visible
        if files visible of w is true then
            set x2 to (x2 - 222)
        end if
    
        -- Create new window
        set w2 to make new text window with properties {bounds:{x1, y1, x2, y2}}
        
        -- Get untitled doc id created with w
        set udoc to ID of document 1 of w2
        
        -- Put the active document of 
        move document 1 of text window id w1 to w2
    
        -- Cleanup
        set files visible of w2 to false
        close document id udoc
        select w2
    end tell
end run