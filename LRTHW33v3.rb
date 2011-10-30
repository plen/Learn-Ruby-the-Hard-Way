variable_1, variable_2 = ARGV

# write a function for printing numbers up to a maximum

variable_3 = variable_1.to_i / variable_2.to_i

# variable in parentheses is the number of elements in the array
# number in curly braces are enumerated from 0, where a begins from 0
# and is modified by the formula outside the modulo sign
numbers = Array.new(variable_3.to_i) { |a| a * variable_2.to_i }

puts numbers