-- toggle live search in BBEDIT
tell application "BBEdit"
	tell window 1
		set live search bar visible to (not live search bar visible)
	end tell
end tell