-- Pandoc to DOCX
-- Ewan Carr (ewancarr.me)

local theText, theFile

try
	do shell script "rm ~/tmp/PandocOut.docx"
end try

tell application "BBEdit"
	set theText to contents of text window 1 as Unicode text
	set theText to zap gremlins theText
end tell

set theFile to "/tmp/pandocMe.txt"

try
	open for access theFile with write permission
	set eof of theFile to 0
	write (theText) to theFile starting at eof as text
	close access theFile
on error
	try
		close access theFile
	end try
end try

do shell script "/usr/local/bin/pandoc /tmp/pandocMe.txt -so /tmp/PandocOut.docx"

tell application "Microsoft Word"
	open "/tmp/PandocOut.docx"
end tell
