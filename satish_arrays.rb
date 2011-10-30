#mtdarry iterates from 0 to num-1. It repeats num times.
#if integer is 1, num iterates once
#if integer is 0, no iterations take place.
#num is initialized to 0 and is returned as 0. square remains nil.

def mtdarry(number_of_times, minimum_number) 
  number_of_times.to_i.times do |num|  
    square = num * num  
    return num, square if num > minimum_number.to_i
  end  
end  

puts "How many iterations would you like?"
number_iterations = gets.chomp

puts "How high would you like the minimum number to be?"
number_limit = gets.chomp
  
# using parallel assignment to collect the return value  
num, square = mtdarry(number_iterations, number_limit)
puts num  
puts square