puts "Let's practice everything."
puts "You\'d need to know \'bout escapes that do \n newlines and \t tabs."

poem = <<-MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannto discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

puts "------------"
puts poem
puts "------------"

five = 10-2+3-6
puts "This should be five: #{five}"

#defining a function
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
#we're passing an array into secret_formula. no brackets necessary here.
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point) #[beans, jars, crates]

# started = gets.chomp()
# secret_formula(started)