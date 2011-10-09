filename = ARGV.first

prompt = "ANS>"
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()