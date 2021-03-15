-- run knitr 
--	A script to process a .Rmd file with knitr.

-- INPUT: a valid .Rmd file
-- OUTPUT: a Markdown (.md) output file.

-- 1. Ask user for output type
-- 2. Get the filename.
-- 3. Remove extension.
-- 4. Process using knitr and Rsource
-- 5. Process using Pandoc and open in appropriate application

-- Prompt user for output type

set userChoice to choose from list {"Markdown", "PDF", "RTF", "DOCX", "HTML", "TeX"} with title "knitr" with prompt "Choose output type:" OK button name "Process" cancel button name "Cancel" default items {"Markdown"}


on getParent(fileAlias)
	set {oldTIDS, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ":"}
	set parentFolderStr to ("" & text items 1 thru -2 of ("" & fileAlias)) & ":"
	set AppleScript's text item delimiters to oldTIDS
	return parentFolderStr
end getParent

tell application "BBEdit"
	try
		tell front text document
			try
				set theFile to its file as alias
			end try
			set thePath to POSIX path of theFile
			set parentFolder to getParent(docFile) of me
			set parentPOSIX to POSIX path of parentFolder
		end tell
	end try
end tell

if thePath ends with "Rmd" then
	set outputName to text 1 thru -5 of thePath
	set outputPath to outputName & ".md"
else
	error "Not a .Rmd file"
	
end if

do shell script "/usr/local/bin/growlnotify -m \"Processing using knitr…\" -a \"BBEdit\""

try
	do shell script "/usr/bin/Rscript -e \"library(knitr); knit(" & quoted form of thePath & ", output=" & quoted form of outputPath & ")\""
end try

-- Process using Pandoc

if userChoice is equal to {"PDF"} then
	try
		do shell script "/usr/local/bin/pandoc -so " & quoted form of outputName & ".pdf " & quoted form of outputPath & " --latex-engine=/usr/texbin/pdflatex"
	end try
	tell application "Skim"
		activate
		open outputName & ".pdf"
	end tell
else if userChoice is equal to {"Markdown"} then
	try
		tell application "Marked"
			open outputPath
			activate
		end tell
	end try
else if userChoice is equal to {"RTF"} then
	try
		do shell script "/usr/local/bin/pandoc -so " & quoted form of outputName & ".rtf " & quoted form of outputPath
	end try
	tell application "TextEdit"
		activate
		open outputName & ".rtf"
	end tell
else if userChoice is equal to {"HTML"} then
	try
		do shell script "/usr/local/bin/pandoc -so " & quoted form of outputName & ".html " & quoted form of outputPath
	end try
	tell application "Google Chrome"
		activate
		open outputName & ".html"
	end tell
else if userChoice is equal to {"RTF"} then
	display dialog "Applescript for RTF not yet implemented"
else if userChoice is equal to {"TeX"} then
	try
		do shell script "/usr/local/bin/pandoc -so " & quoted form of outputName & ".tex " & quoted form of outputPath
	end try
	tell application "BBEdit"
		activate
		set w to make new text window
		try
			open outputName & ".tex" opening in w
		end try
	end tell
end if

