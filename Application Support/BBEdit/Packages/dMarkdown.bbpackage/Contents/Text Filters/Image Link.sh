#! /usr/bin/env bash
TEXT=$1
URL=$2

if [[ -z "$TEXT" ]]; then
    TEXT=""
else
	CAPT=" \"$TEXT\""
fi


if [[ -z "$URL" ]]; then
    URL=`pbpaste`|tr -d "\n"
fi

WIDTH=`sips --getProperty pixelWidth "$URL" | awk -F": " '/pixelWidth/{print $2}'`

HEIGHT=`sips --getProperty pixelHeight "$URL" | awk -F": " '/pixelHeight/{print $2}'`

BASE_NAME=`basename "$URL"`
DIRNAME=`dirname "$URL"`

IMAGE_PATH="$BASE_NAME"
echo "$DIRNAME" | grep ".*/img"
RESULT=$?

if [[ $RESULT -eq 0 ]]; then
    IMAGE_PATH="img/$BASE_NAME"
fi

MMD_LINK=`echo $BASE_NAME | sed -e "s/\(.*\)[.][a-zA-Z]*/\1/" -e "s/ /-/g" | tr A-Z a-z`

printf "(s. [$TEXT](#$MMD_LINK))\n\n![$TEXT][$MMD_LINK]\n\n[$MMD_LINK]: $IMAGE_PATH$CAPT width=\"${WIDTH}px\" height=\"${HEIGHT}px\"\n" | pbcopy
