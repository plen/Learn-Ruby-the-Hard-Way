# arrays, each-do, for-in, while loops

def prompt
  print ">>"
end

the_count = [1,2,3,4]
fruits = ['pears','durians','mangos','kiwis','dragonfruits','lychees','longans','rambutans','jambu']
change = [1,'pennies',2,'dimes',3,'quarters']

#this first kind of for-loop goes through an array
#doesn't matter what you call the array elements in the for loop
#you can write "for piss in the_count" for all it cares, which isn't much
for element in the_count
  puts "This is count #{element}"
end

#same as above, but using a block instead
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end
fruits.sort! {|a,b| b <=> a} # sorting by reverse alphabetical order
puts fruits

#also we can go through mixed arrays too
#note that i attempt to convert the array elements into integers.
#it fails for the strings. strings convert to 0
for i in change
  a = i.to_i + 2
  puts "I got #{a}"
end

#we can also build arrays, first start with an empty one
#if we do elements = [(0..5)] to skip the block below,
#we get an output of 1 element - 0..5

def question
  puts "Do you want: \n1. Stuff\n2. No stuff\n3. enumerated stuff"
  prompt; stuff = gets.chomp.to_i #This is magic! Love it!
  return stuff
end

def answer_print(stuff)

  if stuff == 1
  elements = Array.new(7, "7things")
  end

  if stuff == 2
  elements = Array.new(7)
  end
  
  if stuff == 3
  elements = Array.new
  #use a range object to do 0 to 5 counts
  #only works for integers
    for i in (-5..5)
      puts "Adding #{i} to the list."
      #push is a function that arrays understand
      elements.push(i)
    end
  end

  if elements.empty? == false
    puts "First element was #{elements[0]}" #also elements.first
    puts "The element at position 0 was #{elements.at(0)}" #also elements.last
    puts "The last element was #{elements[-1]}"
    #now we can puts them out too
    for i in elements
      puts "Element was #{i}"
    end
  else
      puts "There is no data to display."
  end
end

answer_print(question)

# days_of_week.index("Wed")
# => 2
# days_of_week[1, 3]
# => ["Tues", "Wed", "Thu"]