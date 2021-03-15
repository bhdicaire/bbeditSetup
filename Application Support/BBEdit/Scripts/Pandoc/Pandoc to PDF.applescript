-- Pandoc to PDF
-- Ewan Carr (ewancarr.me)

local theText, theFile
set theFile to "/tmp/pandocMe.txt"

try
	do shell script "rm ~/tmp/PandocOut.pdf"
end try

tell application "BBEdit"
	set theText to contents of text window 1 as Unicode text
	set theText to zap gremlins theText
end tell


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

do shell script "/usr/local/bin/pandoc /tmp/pandocMe.txt -so /tmp/PandocOut.pdf --latex-engine=/usr/texbin/pdflatex"

tell application "Skim"
	open "/tmp/PandocOut.pdf"
end tell
