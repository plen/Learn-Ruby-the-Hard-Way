# open, read, write to file

filename = ARGV.first
script = $0

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'r+')
#if we open with 'w' mode instead, the file is truncated automatically for us.
#http://www.ruby-doc.org/core/classes/IO.html
puts target.read()

puts "Truncating the file. Goodbye!"
#using File.delete(filename) is possible but it seems the File class has no methods for
#creating a new text file.
target.truncate(0)

puts "Now I'm going to ask you for three lines."

rewind(target) #if you don't rewind, you will end up with lots of spaces before line1. why?
#i suspect its because the text cursor remains at an advanced position if you don't rewind it.

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# target.write("%s \n%s \n%s" % [line1, line2, line3])
# %, the percent sign is the string formatting operator, 
# it tells Ruby, hey this is a formatting string, put these variables in here. 
# equally valid is
target.write("#{line1}\n#{line2}\n#{line3}")

puts "And finally, we close it."
target.close()