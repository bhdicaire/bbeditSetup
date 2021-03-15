#!/usr/local/bin/node

process.stdin.resume();
process.stdin.setEncoding('utf8');

process.stdin.on('data', function (chunk) {
  process.stdout.write(decodeURIComponent(chunk));
})
