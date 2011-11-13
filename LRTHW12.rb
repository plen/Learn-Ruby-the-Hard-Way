# open-uri library, each-do loop

require 'open-uri'

puts "type in a website address here:"
website = gets.chomp()

open("http://#{website}") do |f|
  f.each_line {|line| p line}
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.content_encoding
  puts f.last_modified
end