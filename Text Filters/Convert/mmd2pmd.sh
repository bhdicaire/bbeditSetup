#!/bin/sh
perl -pe 's/\[#(.+)\]/\[\@$1\]/g;s/\[\@(.+);\]/\@$1/g;s/\[(.+)\]\[\@(.+)\]/\[\@$2, $1\]/g;s/\[(.+)\]\@(.+\b)/\@$2 \[$1\]/g;s/\[\@(.+), (.+)\\\]\\\[(.+)\]/\[$2 \@$1, $3\]/g;s/\@(.+) \[(.+)\\\]\\\[(.+)\]/$2 \@$1 \[$3\]/g;s/<!--\\citeyearpar\{(.+)\}-->/\[-\@$1\]/g;s/\[\@(.+),[ ]*' $1


# =================================================================
# mmd2pmd - A script to convert MultiMarkdown to Pandoc Markdown
# -----------------------------------------------------------------

# - At present, only interested in citation support. 
# - WORK IN PROGRESS
#	 - Need to find a way of matching multiple citations.
#	 - So far I have
#	 
#	   \[\@([\w|\d|:]+),\s([\w|\d|:]+,\s)+([\w|\d|:]+)\]
#	 
#	   which matches
#
# 	   [@cite0:2001, citea:1999, citeb:2000, citec:2001, cited:2002]
#
# 	 - But can only match a single replacement.


# Reference
# ------------------------------------------------------------------
# 
# MMD                             Pandoc                LaTeX (natbib)               Output
# ----------------------------    ---------------       ---------------------------- -------------
# [#citekey]                      [@citekey]            ~\citep{citekey}              (Smith, 2002)
# [#citekey;]	                    @citekey              ~\citet{citekey}              Smith (2002)
# [foo][#citekey]                 [@citekey, foo]       ~\citep[foo]{citekey}         (Smith, 2002, foo)
# [foo][#citekey;]                @citekey [foo]        ~\citet[foo]{citekey}         Smith (2002, foo)
# [foo\]\[bar][#citekey]          [foo @citekey, bar]   ~\citep[foo][bar]{citekey}    (foo Smith, 2002, bar)
# [foo\]\[bar][#citekey;]         foo @citekey [bar]    ~\citet[foo][bar]{citekey}    foo Smith (2002, bar)
# <!--\citeyearpar{citekey}-->    [-@citekey]		      ~\citeyearpar{citekey}        (2002)
# 
# Multiple citations
# 
# MMD                             Pandoc                
# ----------------------------    ------------------------------
# [#citekey, citekey, citekey]    [@citekey; @citekey; @citekey] 
# 
