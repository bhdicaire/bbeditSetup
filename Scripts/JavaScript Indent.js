#!/usr/local/bin/node

// PBS 12/5/13
// This is a BBEdit text filter for indenting (and beautifying) JavaScript.
// It goes in ~/Library/Application Support/BBEdit/Text Filters/
// 
// On my machine I assigned it a keyboard shortcut: cmd-'
// 
// It requires the js-beautify Node module: https://github.com/einars/js-beautify
// 
// The trick, in the script, was providing the full path to the globally-installed js-beautify module.
// 
// I figured out how to write a BBEdit/Node text filter from the very nice example here:
// http://www.mtaa.net/mtaaRR/news/twhid/geek/use_node_js_with_bbedit_text_filters_feature.html

var jsbeautify = require('/usr/local/lib/node_modules/js-beautify').js_beautify;

process.stdin.resume();
process.stdin.setEncoding('utf8');

process.stdin.on('data', function(chunk) {

  var s = jsbeautify(chunk, {
    indent_size: 2,
    brace_style: "end-expand"
  });

  process.stdout.write(s);
})