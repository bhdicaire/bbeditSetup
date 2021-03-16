#!/bin/zsh -f
# 	Purpose: BBEdit Text Filter - will convert input from HTML to plain text using lynx
# 	Requires:	lynx
#
# 	From:	Timothy J. Luoma
# 	Mail:	luomat at gmail dot com
# 	Date:	2013-03-02
#	URL:	https://github.com/tjluoma/bbedit
#

NAME="$0:t"

INPUT=$(cat "$@")

if [[ "$INPUT" == "" ]]
then
			# We need input to do anything with this. If we didn't get any, quit.

		echo "$NAME: No input received."

		exit 1
fi

if ((! $+commands[lynx] ))
then
		# This checks to make sure `lynx` is found in the $PATH
		# Iff it is NOT found, then we execute this IF/THEN

	echo "$NAME: 'lynx' is required but not found in $PATH. You can get it via 'brew install lynx' or download an installer from http://code.google.com/p/rudix/wiki/lynx."


		# Now we give the user back their input
	cat "$@"

	exit 1

fi

		# Translation:
		#
		# echo "$INPUT" = send the stdin to stdout (there may be
		# another/better way of doing this)
		#
		# send (pipe) it to lynx
		#
		# -dump = dump whatever lynx processed to stdout
		# -listonly = create a list of links as output
		# -nonumbers = don't number links in the output (1…2…3…)
		# -stdin = tell lynx to look for stdin
		# -width 1024 = how wide you want the output to be


echo "${INPUT}" | lynx -assume_charset=UTF-8 -assume_unrec_charset=UTF-8 -nocolor -hiddenlinks=merge -dump -nomargins -stdin -width 99999

		# Test the previous command to make sure that it exited properly
	EXIT="$?"

	if [ "$EXIT" = "0" ]
	then

			# if we get here, then the previous command exited successfully
		exit 0


	else
			# if we get here, then the previous command failed
			# Tell the user it failed
		echo "$NAME: failed (\$EXIT = $EXIT)\n\n"

			# and then give the user back their original input (even though
			# they SHOULD be able to do 'undo' in BBEdit, why take the
			# chance?

		echo "$NAME: Original input follows:\n\n\n$INPUT"

		exit 1
	fi

exit

#
#EOF
