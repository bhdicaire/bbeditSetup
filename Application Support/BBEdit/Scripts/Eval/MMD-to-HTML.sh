#!/bin/zsh -f
#
#	Author:		Timothy J. Luoma
#	Email:		luomat at gmail dot com
#	Date:		2011-08-14
#
#	Purpose: 	Process the current file with MultiMarkdown
#
#	URL:

NAME="$0:t:r"

	# What extension should we give the file that we are going to create?
	# NOTE: do not include the leading '.'
EXT='html'

	# What app do you want the resulting file opened in? Use
	# OPEN_IN=''
	# to suppress auto-opening of file after it is created.
OPEN_IN='BBEdit'

####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
# change `multimarkdown` to whatever the command line tool is that you will be using
if ((! $+commands[multimarkdown] ))
then

	# note: if desired command is a function or alias it will come back not found

	echo "	$NAME Fatal error: multimarkdown is required but not found in $PATH"
	exit 1

fi


####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
#
#	You should not _have_ to change anything below here.
#
####|####|####|####|####|####|####|####|####|####|####|####|####|####|####


####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
# a little function to report errors using Growl, if installed
msg () {
			# if growlnotify is installed, try to use it to send messages to user.
			#
			# if growlnotify is installed but you don't want to use it, use
			#
			# 	msg () { echo "$NAME: $@" }
			#
			# instead of this.

		if (( $+commands[growlnotify] ))
		then

				# use `growlnotify` but fall back on `echo` if it fails

			growlnotify \
				--appIcon "BBEdit" \
				--identifier "$NAME" \
				--message "$@" \
				--title "$NAME" ||\
			echo "$NAME: $@"

		else

			# if growlnotify is not installed, use `echo` to send messages to user

			echo "$NAME: $@"

		fi
}

####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
# make sure we have the variable we need, either from BBEdit (BB_DOC_PATH) or as an argument
if [[ "$BB_DOC_PATH" = "" ]]
then

	if [ "$#" = "0" ]
	then
	# No args AND no BB_DOC_PATH? Might as well give up now.

		msg "Fatal error: variable BB_DOC_PATH is empty AND no args given"
		exit 1

	else
	# if BB_DOC_PATH is empty but an argument was given, use that instead

		INPUT_FILE="$@"

	fi

else
	# if BB_DOC_PATH is set, use that as input file

		INPUT_FILE="$BB_DOC_PATH"
fi

####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
####|####|####|####|####|####|####|####|####|####|####|####|####|####|####
####|####|####|####|####|####|####|####|####|####|####|####|####|####|####

	# we want the full path to the INPUT_FILE
INPUT_FILE=($INPUT_FILE(:A))

	# Check to make sure we have a readable file which actually exists. Details, details…
	# "Never trust users to give valid input." -- Dr. Cupper
if [ ! -e "$INPUT_FILE" ]
then
		msg "$INPUT_FILE does not exist"
		exit 1
fi

if [ ! -f "$INPUT_FILE" ]
then
		msg "$INPUT_FILE is not a file"
		exit 1
fi

if [ ! -r "$INPUT_FILE" ]
then
		msg "$INPUT_FILE is not readable"
		exit 1
fi

	# this will take the original input file, remove the path and the file extension, and then just
	# add the extension the user gave us at the beginning
OUTPUT_FILENAME="$INPUT_FILE:h/$INPUT_FILE:t:r.$EXT"

if [[ -e "$OUTPUT_FILENAME" ]]
then

		# if there is already a file with the output filename, rename it using the current date and time
	zmodload zsh/datetime

	TIME=$(strftime %Y-%m-%d--%H.%M.%S "$EPOCHSECONDS")

		# don't use '-v' or else BBEdit will show output window
	mv -f "$OUTPUT_FILENAME" "$OUTPUT_FILENAME.backup.by.$NAME.at.$TIME"

fi

multimarkdown --extensions --smart --process-html --to=html --output="$OUTPUT_FILENAME" "$INPUT_FILE"

EXIT="$?"

if [ "$EXIT" = "0" ]
then
		# success! Assuming that 'multimarkdown' (or whatever you use) is smart enough to use exit codes properly.

			# Open the file in whatever app the user requested.
		if [ "$OPEN_IN" != "" ]
		then
				open -a "$OPEN_IN" "$OUTPUT_FILENAME"
		fi

			# Exit cleanly
		exit 0
else
		echo "$NAME: multimarkdown failed (\$EXIT = $EXIT)"

		exit 1
fi

	# We shouldn't ever get here. So if we do, assume something went wrong.
exit 1

#EOF
