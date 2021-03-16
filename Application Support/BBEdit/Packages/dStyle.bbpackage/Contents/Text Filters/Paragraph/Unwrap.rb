#!/usr/bin/env ruby
# encoding: utf-8
debug = ARGV =~ /^(-d|debug)$/
if RUBY_VERSION.to_f > 1.9
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
  if debug
    input = DATA.read.force_encoding('utf-8')
  else
    input = STDIN.read.force_encoding('utf-8')
  end
else
  if debug
    input = DATA.read
  else
    input = STDIN.read
  end
end

# separate headlines from any following text with newlines
input.gsub!(/(?mi)^(#+.*?)\n(\S)/, "\\1\n\n\\2")

input.gsub!(/(?m-i)(^\n```[\s\S]*?\n```|^\s*[\*\+\?\-\d][\s\S]*?$|^[^\*\+\-\d][\s\S]*?(?=\n{2,}|[\*\+\-\d:] |\n$))/) do |m|
  unless m =~ /^```/ || m =~ /^\s*[*-+]/ || m.scan(/^\S/).length == 0
    # remove newlines, replacing with space
    m.gsub!(/(?i-m)(?<=\S)\s+/," ")
    m = "\n#{m}"
    # # if concatenation resulted in hyphen-space (ignoring consecutive hyphens), remove hyphen
    m.gsub!(/([^-])- /,"\\1")
    # # trim space around remaining hyphens
    m.gsub!(/ *(-) */,"\\1")
  end
  m
end

puts input.gsub(/\n{2,}/,"\n\n")

__END__

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
sunt in culpa qui officia deserunt mollit anim id est laborum.

  def something
    do something
  end

Only the stagnant air a drum but the victory. Thus at any ordinary shops dealing
on edge and get you move. Of course it's only because she said. Their names in
preparation for hardly crossed his right in bed no difference. DOWN WITH BIG
BROTHER IS PEACE FREEDOM IS WATCHING YOU the flash of bright-lit tableaux
occurring against Goldstein at our kitchen sink was part of the tobacco fell out
of gritty dust and quivering as himself and day was menacing him a terrible his
formidable appearance he thought.

```
this is a code block
  as well

  it does stuff
```

Partly it at the mutability of wanting it did live. Before the night the tobacco
fell out your side. Here is no background of power of all. Only the kitchen sink
was impossible for indoor display had left of quiet optimism which Winston found
that came back in time the doctrines of Love which case it some of nothing
snatches of relief flowed through their eyes watching her. Repairs except
courage.

#section
covers of self-hypnosis a trampling of wrecking the decisive act of glittering
white concrete soaring up by hand he writing would inform you got up into
Winston's entrails seemed like chicken-houses. Down in your disgust.

* list item
* another list item
  + sub item
  + sub item

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

    Sed ut perspiciatis unde omnis iste natus error sit
    voluptatem accusantium doloremque laudantium, totam rem aperiam
* against
  - hey

definition

: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius --
 mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo

def 2
: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo

1. one
2. two Food truck McSweeney's tofu, drinking vinegar polaroid organic seitan fingerstache.

