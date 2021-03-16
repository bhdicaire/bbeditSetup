(* Extract BBEdit placeholder
 * A key press minimising script to extract and apply text from BBEdit Clippings placeholders.
 * https://github.com/ollicle/BBEdit-Extract-Placeholder
 * Oliver Boermans
 * @ollicle
 *)

tell application "BBEdit" to tell front window
	activate

	set selectedText to selection

	-- Stop here if no selection
	if (count of characters of selectedText) is equal to 0 then

		beep
		return

	end if

	-- BBEdit placeholder grep pattern
	set findPlaceholder to "(?:<#)(?:\\*)?(.+?)(?:#>)"
	set replacePlaceholder to "\\1"

	-- Text found between the option delimiters
	set placeholderContent to ""

	-- Divides the content of the placeholder into replacement options
	set defaultOptionDelimiter to {"|"}

	-- Divides the placeholder with a custom specified
	set customDelimiterDelimiter to "=|="

	-- The text to replace the selected text with
	set replacement to ""

	-- Derived label for the presented options
	set promptText to ""

	-- Default label for the presented options until a means to extract one is coded
	set defaultKey to "Options"

	-- Find first placeholder and select it
	set placeholder to find findPlaceholder searching in selectedText options {search mode:grep} with selecting match
	if found of placeholder is true then

		-- Store content of placeholder
		set placeholderContent to grep substitution of replacePlaceholder

	else

		-- No placeholder found - use the whole selection
		set placeholderContent to selectedText as string

	end if

	-- Determine delimiter
	set AppleScript's text item delimiters to customDelimiterDelimiter
	set customDelimiterSplit to text items of placeholderContent

	-- Restore default
	set AppleScript's text item delimiters to {""}

	set delimiterSplitCount to count of customDelimiterSplit

	if (delimiterSplitCount is greater than 1) and (first item of customDelimiterSplit is not equal to "") then

		set optionDelimiter to first item of customDelimiterSplit

		-- Only one instance of customDelimiterDelimiter (as expected)
		if delimiterSplitCount is equal to 2 then

			set placeholderContent to last item of customDelimiterSplit

		else

			-- Oops an unintended delimiter - let’s not omit it
			set countOfCharsToTrim to (length of optionDelimiter) + (length of customDelimiterDelimiter) + 1
			set contentLength to length of placeholderContent
			set placeholderContent to text countOfCharsToTrim thru contentLength of placeholderContent

		end if

	else if first item of customDelimiterSplit is equal to "" then

		-- Empty custom delimiter - do not split into options
		-- Use whole placeholder omitting the first customDelimiterDelimiter

		set countOfCharsToTrim to (length of customDelimiterDelimiter) + 1
		set contentLength to length of placeholderContent
		set replacement to text countOfCharsToTrim thru contentLength of placeholderContent

		set selection to replacement

		-- We’re done!
		return

	else

		set optionDelimiter to first item of defaultOptionDelimiter

	end if

	-- Extract any contained replacement options
	set AppleScript's text item delimiters to optionDelimiter
	set foundOptions to text items of placeholderContent

	-- Restore default
	set AppleScript's text item delimiters to {""}

	-- Handle multiple options
	set numOptions to count of foundOptions

	if numOptions is equal to 1 then

		set replacement to placeholderContent

	else

		-- Extract options and promptText

		if first item of foundOptions is equal to "" then

			-- Empty first option indicates a custom label follows
			set promptText to item 2 of foundOptions

			--	Use default if the following option is empty
			if promptText is equal to "" then

				set promptText to defaultKey

			end if

			set optList to items 3 thru numOptions of foundOptions

		else

			set promptText to defaultKey
			set optList to foundOptions

		end if


		set replacement to choose from list optList ¬
			with title ¬
			"Choose" with prompt ¬
			"" & promptText & ":" default items item 1 of optList ¬
			OK button name ¬
			"Insert" cancel button name ¬
			"Cancel" without empty selection allowed and multiple selections allowed

		-- User cancelled, stop here
		if replacement = false then return

	end if

	set selection to replacement
end tell
