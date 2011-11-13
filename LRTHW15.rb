# accept a filename as argument and put the file contents.

filename = ARGV.first

txt = File.open(filename, 'r')

puts "Here's your file: #{filename}"
puts txt.read()