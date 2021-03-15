# Just wraps the cursor in spaces.
tell application "Finder" to set c_path to container of container of container of (path to me) as text
set home to POSIX path of c_path & "Resources/"
set wrap to POSIX file (home & "wrap_in_spaces")

tell window 1 of application "BBEdit"
	insert clipping wrap
end tell