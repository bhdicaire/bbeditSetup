#!/usr/bin/env ruby -Ku -rubygems
# grabs Chrome tabs
# creates markdown reference list
# generates unique, short titles based on domains
# truncates feedburner stuff

$KCODE = 'u'
UNICODE_COMPETENT = ((RUBY_VERSION)[0..2].to_f > 1.8)

unless UNICODE_COMPETENT # lower than 1.9
  class String
     def utf8_length
        i = 0
        i = self.scan(/(.)/).length
        i
     end
  end
else # 1.9 and above
  class String
     alias_method :utf8_length, :length
  end
end

def chrome_refs
  input = %x{osascript -e 'tell application \"Google Chrome\"' -e 'set tabList to every tab of window 1' -e 'set urlList to \"\"' -e 'repeat with aTab in tabList' -e 'set aLink to URL of aTab & ASCII character 10' -e 'set urlList to urlList & aLink' -e 'end repeat' -e 'return urlList' -e 'end tell'}.chomp
  links = input.scan /(?:\[([^\]]+)\]\: )?(https?:\/\/[^ \n"]+)/m

  if links.empty? && input.empty?
  	exit
  else
    norepeat = []
    output = []
    links.each {|url| 
      url[1] = url[1].sub(/[\?&]utm_source=feed.*$/,'')
    	if url[0].nil?
    	  if url[1] =~ (/http:\/\/itunes.apple.com\/(.+?)\/app\/(.+?)\/id\d+/)
    	    name = $2
    	  elsif url[1] =~ /(itunes|phobos).apple.com/
    	    name = "itunes"
    	  else
    		  domain = url[1].match(/https?:\/\/([^\/]+)/)
    		  parts = domain[1].split('.')
    		  name = case parts.length
    			  when 1
					parts[0]
    			  when 2
					parts[0]
    			  else parts[1]
    		  end
    		end
    	else
    		name = url[0]
    	end

    	while norepeat.include? name
    		if name =~ / ?[0-9]$/
    			name.next!
    		else 
    			name = name + " 2"
    		end
    	end
    	output << {'title' => name, 'link' => url[1] }
    	norepeat.push name
    }
    output = output.sort {|a,b| a['title'] <=> b['title']}
    counter = 0
    output.each { |x| 
    	counter += 1
    	puts "[#{x['title']}]: #{x['link']}"
    }
  end
end

chrome_refs