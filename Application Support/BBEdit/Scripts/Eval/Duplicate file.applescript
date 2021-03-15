-- Duplicate the current file in BBEdit
-- Ewan Carr, Saturday 23 June @ 22:32

local theFile
local parentFolder
local theTarget

tell application "BBEdit"
	save text document 1
	set theFile to file of text document 1 as string
end tell

tell application "Finder"
	set parentFolder to container of item theFile
	set theTarget to parentFolder as alias
	duplicate theFile to folder theTarget
end tell
