#!/usr/bin/env ruby -Ku -rubygems

# /usr/bin/env ruby

require 'shellwords'

if RUBY_VERSION.to_f > 1.9
	input = STDIN.read.force_encoding('utf-8')
else
	input = STDIN.read
end

def find_headers(lines)
    in_headers = false
    lines.each_with_index {|line, i|
        if line =~ /^\w[^\:\[]+\:( .*?)?$/
            in_headers = true
        elsif in_headers === true
            return i
        else
            return false
        end
    }
end

links = input.scan(/\((https?:\/\/([^\)]+))\)/)
refs = input.scan(/^ {0,3}\[[^\^]([^\]]+)\]: (\S+)$/)
lines = input.split("\n")

bottom = lines[0..-1].join("\n").gsub(/^\[[^\^]([^\]]+)\]: (\S+)\n?/,'')

norepeat = []
norepeatlinks = []
output = []

refs.each {|ref|
	name = ref[0]
	next if norepeatlinks.include? ref[1]
	while norepeat.include? name
		if name =~ / ?[0-9]$/
			name.next!
		else 
			name = name + " 2"
		end
	end
	output << {'orig' => ref[0], 'title' => name, 'link' => ref[1]}
	norepeat.push name
	norepeatlinks.push ref[1]
}

links.each {|url| 
		next if norepeatlinks.include? url[0]
		domain = url[0].match(/https?:\/\/([^\/]+)/)
		parts = domain[1].split('.')
		name = case parts.length
			when 1
				parts[0]
			when 2
				parts[0]
			else parts[1]
		end
	while norepeat.include? name
		if name =~ / ?[0-9]$/
			name.next!
		else 
			name = name + " 2"
		end
	end
	output << {'orig' => url[0], 'title' => name, 'link' => url[0] }
	norepeat.push name
	norepeatlinks.push url[0]
}
output = output.sort {|a,b| a['title'] <=> b['title']}
o = []

output.each_with_index { |x,i| 
	o.push("[#{x['title']}]: #{x['link']}")
	bottom = bottom.gsub(/\((#{Shellwords.escape(x['orig'])}|#{Shellwords.escape(x['link'])})\)/,"[#{x['title']}]").gsub(/\[#{Shellwords.escape(x['orig'])}\]/,"[#{x['title']}]")
}
puts bottom + "\n\n#{o.join("\n")}\n"