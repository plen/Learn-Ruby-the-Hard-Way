puts "What do you need help with? Please enter a word or a symbol."
help_topic = STDIN.gets.chomp()

if help_topic =~ /puts/
  puts <<-INFO
puts: puts is print. however, puts is better than print because it adds a new line at the end of your input.
You can put code fragments into a 'puts' statement, such as string interpolation and math.
  INFO
end

if help_topic =~ /\^/ or /caret/
  puts <<-INFO
^ or caret: it's a symbol. Don't know that it does much at all.
Sounds healthy though.
  INFO
end

if help_topic =~ /octothorpe/ || /\#/ || /pound/ || /hash/
  puts <<-INFO
#: the hash sign, also known as the pound sign or octothorpe character.
  INFO
end

if help_topic =~ /<=/ || /less-than-equal/
  puts <<-INFO
<=: called less-than-equal. used for evaluation.
  INFO
end

if help_topic =~ /\#{\}/ || /string-interpolation/
  puts <<-INFO
\#{}: the expression contained within the braces can be just about any Ruby code.
This is called string interpolation, in that the expression within the \#{}
is usually interpolated with a string.
  INFO
end

if help_topic =~ /print/
  puts <<-INFO
print: print is puts. however, print doesn't mess around and add a new line at the end of your input.
You can put code fragments into a print statement, such as string interpolation and math.
  INFO
end

if help_topic =~ /rege[x|xp]/ 
  puts <<-INFO
regular expression: A regular expression is a special sequence of characters that helps you
match or find other strings or sets of strings, using a specialized syntax held in a pattern.
  INFO
end

if help_topic =~ /librar[y|ies]/ 
  puts <<-INFO
ruby looks for libraries in the following directories:
/Library/Ruby/Site/1.8
/Library/Ruby/Site/1.8/powerpc-darwin11.0
/Library/Ruby/Site/1.8/universal-darwin11.0
/Library/Ruby/Site
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/vendor_ruby/1.8
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/vendor_ruby/1.8/universal-darwin11.0
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/vendor_ruby
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/powerpc-darwin11.0
/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/universal-darwin11.0
INFO
end

if help_topic =~ /gets/ 
  puts <<-INFO
gets: prompts user for input. Also notice that is used above STDIN.gets instead of plain 'ol gets.
That is because if there is stuff in ARGV, the default gets method tries to treat the first argument as a file and read from that.
To read from the user's input (i.e., stdin) in such a situation, you have to use STDIN.gets explicitly.
  INFO
end

if help_topic =~ /::/ 
  puts <<-INFO
:: : Lets you access a constant, module, or class defined inside another class or module.
It is used to provide namespaces so that method and class names don't conflict with other classes by different authors.
When you see ActiveRecord::Base in Rails it means that Rails has something like
module ActiveRecord
  class Base
  end
end
  INFO
end


#HEREDOC / EOF
# if help_topic.to_s.to_str =~ /puts/
#   puts "puts: puts is print. however, puts is better than print because it adds a new line at the end of your input."
# end
#What's wrong with the above? it seems the interpreter can't read the second INFO and concludes it's not there.
#ANS: you need to put a 'dash' before the EOF/HEREDOC title.
#This changes the delimiter for the block from ' (dash) to "(double quotes)