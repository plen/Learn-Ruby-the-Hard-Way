variable_1, variable_2 = ARGV

def enumerate(max, increment)
  i = 0
  numbers = []

  while i < max.to_i
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += increment.to_i
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end
end

if variable_1.to_i < 1 and variable_2.to_i < 1
  puts "Type in the highest number."
  variable_1 = gets.chomp.to_i
  puts "Type the amount to increment by"
  variable_2 = gets.chomp.to_i
end

enumerate(variable_1, variable_2)