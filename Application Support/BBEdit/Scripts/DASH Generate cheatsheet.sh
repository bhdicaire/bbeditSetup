#!/bin/bash


cd `dirname $BB_DOC_PATH`

cheatset generate `basename $BB_DOC_PATH` && echo "successfully generated!"
