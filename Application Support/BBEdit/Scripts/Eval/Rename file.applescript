-- Rename the current file in BBEdit
-- Ewan Carr, Saturday 23 June 2012 @ 22:32

local theName
local theFile
local parentFolder
local parentAlias
local basePath
local originalPath
local newName
local theCommand

tell application "BBEdit"
	save text document 1
	set theName to name of text document 1
	set theFile to file of text document 1 as string
end tell

tell application "Finder"
	set parentFolder to container of item theFile
	set parentAlias to parentFolder as alias
	set basePath to POSIX path of parentAlias
	set originalPath to POSIX path of theFile
end tell

set newName to text returned of (display dialog "Enter new name:" default answer theName)

set theCommand to "mv " & quoted form of originalPath & " " & quoted form of (basePath & newName)
do shell script theCommand