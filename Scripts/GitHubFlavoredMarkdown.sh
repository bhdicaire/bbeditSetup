#!/bin/bash
#
# GitHub Flavored Markdown
# https://gist.github.com/levigroker/96f96253c992b7a947d93c3d32d80b8d
#
# A BBEdit Preview Filter script to render GitHub flavored markdown as HTML
# See the "Applying Preview Filters" section of the BBEdit Manual
# https://www.barebones.com/support/bbedit/index.html#docs
# GitHub Flavored Markdown Spec: https://github.github.com/gfm/
# GitHub Flavored Markdown CLI: https://github.com/github/cmark-gfm
#
# Levi Brown
# @levigroker
# levigroker@gmail.com
# April 23, 2020
# Licence: http://creativecommons.org/licenses/by/4.0/
##

# Check for installed `cmark-gfm`
CMARK_B=$(which cmark-gfm)
if [ ! -x "${CMARK_B}" ]; then
	echo '<p><a href="https://github.com/github/cmark-gfm">cmark-gfm</a> executable not found on PATH.</p><p>Please install it:</br><pre>brew install cmark-gfm</pre></p>'
	exit
fi

# Pull in STDIN
IN=$(tee)

# Get the list of extensions from the tool, but drop the first line as that is just a header ("Available extensions:")
EXTENSIONS=$("${CMARK_B}" --list-extensions | tail -n +2)
# Build up the argument list to include all extensions
ARGS=""
for EXTENSION in ${EXTENSIONS[@]}; do
	ARGS="${ARGS} -e ${EXTENSION}"
done

OUT=$(echo "${IN}" | "${CMARK_B}"${ARGS})
echo -n "${OUT}"
