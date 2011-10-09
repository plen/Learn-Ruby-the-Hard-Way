# The reason we put our functions in a module is so they have their own namespace.
# If someone else writes a function called break_words, we won't collide.
# However, if typing Ex25. is annoying, you can type include Ex25 which is like saying,
# "Include everything from the Ex25 module in my current module."

module LRTHW26
  # This function will break up words for us.
  def self.break_words(stuff)
      words = stuff.split(' ')
      #if you use puts instead of return, the array 'words' will include a 'nil'.
      #further operations may fail because 'nil' isn't a valid operand.
      return words
  end

  # Sorts the words.
  def self.sort_words(words)
      words1 = words.sort()
      return words1
  end

  # Prints the first word after popping it off.
  def self.puts_first_word(words)
      word = words.shift()
      puts word
  end

  # Prints the last word after popping it off.
  def self.puts_last_word(words)
      word = words.pop()
      puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def self.sort_sentence(sentence)
      words = break_words(sentence)
      sorted_words = words.sort()
      return sorted_words
  end

  # Puts the first and last words of the sentence.
  def self.puts_first_and_last(sentence)
      words = break_words(sentence)
      puts_first_word(words)
      puts_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def self.puts_first_and_last_sorted(sentence)
      words = break_words(sentence)
      sorted_words = words.sort()
      puts_first_word(sorted_words)
      puts_last_word(sorted_words)
  end
end

puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 5
puts "This should be five: %s" % five

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans \ 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates == secret_formula(start-point)

puts "With a starting point of: %d" % start_point
puts "We'd have %d jeans, %d jars, and %d crates." % (beans, jars, crates)

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crabapples." % secret_formula(start_pont


sentence = "All god\tthings come to those who weight."

words = ex25.break_words(sentence)
sorted_words = ex25.sort_words(words)

puts_first_word(words)
puts_last_word(words)
.puts_first_word(sorted_words)
puts_last_word(sorted_words)
sorted_words = ex25.sort_sentence(sentence)
prin sorted_words

puts_irst_and_last(sentence)

puts_first_a_last_sorted(senence)