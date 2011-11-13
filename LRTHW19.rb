# functions, and passing values to functions

def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "Or, we can use variables from our script"
cheeses = 30
boxes = 50
cheese_and_crackers(cheeses, boxes)

puts "OMG, we can even do math inside the function:"
cheese_and_crackers(10+50, 49*4)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(cheeses+100, boxes-5)