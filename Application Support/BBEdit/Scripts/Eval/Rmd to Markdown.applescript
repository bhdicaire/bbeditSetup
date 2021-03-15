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

tell application "BBEdit"
	try
		tell front text document
			try
				set theFile to its file as alias
			end try
			set thePath to POSIX path of theFile
		end tell
	end try
end tell

if thePath ends with "Rmd" then
	set outputPath to "/tmp/knitr.md"
else
	error "Not a .Rmd file"
end if

do shell script "/usr/local/bin/growlnotify -m \"Processing using knitr…\" -a \"BBEdit\""

try
	do shell script "/usr/bin/Rscript -e \"library(knitr); knit(" & quoted form of thePath & ", output=" & quoted form of outputPath & ")\""
end try

try
	tell application "Marked"
		open outputPath
		activate
	end tell
end try
