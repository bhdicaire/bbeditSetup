-- uses pandoc to convert markdown file in front window to Word .docx, opens file in Word

on escape(filename)
	set chars to every character of filename
	repeat with i from 1 to length of chars
		if "!$&\"'*(){[|;<>?~` \\" contains (item i of chars as text) then
			set item i of chars to (ASCII character (92)) & (item i of chars as text)
		end if
	end repeat
	return every item of chars as string
end escape

tell application "BBEdit"
	set this to front window
	set filepath to file of this as alias
	set filename to name of this
end tell

tell application "Finder"
	set directory to container of filepath as alias
	set directory to POSIX path of directory
end tell

-- create newfilename for saving output
set newfilename to text 1 thru text item -3 of filename -- remove the md
set newfilename to newfilename & "docx" -- and change the suffix

-- create handles for scripts & file ops
-- add path & escape dodgy chars
set newfileref to escape(directory) & escape(newfilename)
set fileref to escape(directory) & escape(filename)


-- convert
do shell script "/usr/local/bin/pandoc -o " & newfileref & " -f markdown -t docx " & fileref

--open
tell application "Microsoft Word"
	open (directory & newfilename)
end tell

