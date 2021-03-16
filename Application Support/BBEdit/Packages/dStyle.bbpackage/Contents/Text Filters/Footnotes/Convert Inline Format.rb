#!/usr/bin/env ruby
def e_sh(str)
	str.to_s.gsub(/(?=[^a-zA-Z0-9_.\/\-\x7F-\xFF\n])/n, '\\')
end

input = STDIN.read

footnotes = input.scan(/(\(\*(?:\[(.*?)\])?(.+?)\*\))/m)
existing = input.scan(/^\[\^(.*?)\]: /i).map {|match| match[0].strip }

output = []
counter = 1
footnotes.each {|note|
	if note[1].nil?
		while existing.include?("fn#{counter}")
			counter += 1
		end
		title = "fn#{counter}"
	else
		title = note[1].strip
		while existing.include?(title)
			title = "#{title}0" unless title =~ /\d$/
			title.next!
		end
	end
	existing.push(title)
	output << {'orig' => note[0], 'title' => title, 'footnote' => note[2].strip }
}

o = []
output.each_with_index { |x,i|
	o.push("[^#{x['title']}]: #{x['footnote'].gsub(/\n\n(\s*.)/,"\n\n\t\\1")}")
	input.sub!(/#{e_sh x['orig']}/m,"[^#{x['title']}]")
}
print input.strip + "\n\n#{o.join("\n\n")}\n"

