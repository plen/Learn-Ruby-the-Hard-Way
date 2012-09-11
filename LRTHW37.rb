# module LRTHW37 # module methods must have self? outside module must call module name?
# maybe modules can only have function definitions? no execution of Main?
# can't call gets.chomp in a script with a module?
# From Rubyist.net: a module can have no instances and no subclasses
# hence, it seems that it is impossible for me to ask user input and have a module here.
# save module learning for later

# let's think car models and brands
# write a script that asks for a set of car models, then pair them with the brands below.
# if model is unknown, rescue/end safely without raising an exception.

# There are four ways to interrupt the progress of a loop from inside.
# First, break means, as in C, to escape from the loop entirely.
# Second, next skips to the beginning of the next iteration of the loop.
# Third, ruby has redo, which restarts the current iteration. 
# The fourth way to get out of a loop from the inside is return.

def what_is_this_car(car)
  manufacturer = case car
    when "Saga" then "Proton"
    when "Focus" then "Ford"
    when "Navigator" then "Lincoln"
    when "Camry" then "Toyota"
    when "Civic" then "Honda"
    when "Patriot" then "Jeep"
    when "Jetta" then "VW"
    when "Cayenne" then "Porsche"
    when "Outback" then "Subaru"
    when "520i" then "BMW"
    when "Tundra" then "Nissan"
    else "Unknown"
    end
    rescue
      manufacturer = "Unknown"
  return manufacturer
ensure
  puts "Thanks for playing."
end

car_name = gets.chomp
puts what_is_this_car(car_name)

# RESCUE
# an example exists on the desktop if you're still unsure

# ENSURE
# begin
#   file = open("/tmp/some_file", "w")
#   # ... write to the file ...
# rescue
#   # ... handle the exceptions ...
# ensure
#   file.close   # ... and this always happens.
# end
# if rescue and ensure both exist, rescue must come first before ensure

# END executes before the script exits regardless of earlier bits.

# REDO
# #!/usr/bin/ruby
# 
# for i in 0..5
#    if i < 2 then
#       puts "Value of local variable is #{i}"
#       redo
#    end
# end
# This will produce following result and will go in an infinite loop:
# 
# Value of local variable is 0
# Value of local variable is 0
# ............................

# NEXT
#!/usr/bin/ruby
# 
# for i in 0..5
#    if i < 2 then
#       next
#    end
#    puts "Value of local variable is #{i}"
# end
# This will produce following result:
# 
# Value of local variable is 2
# Value of local variable is 3
# Value of local variable is 4
# Value of local variable is 5

# BREAK
#!/usr/bin/ruby
# 
# for i in 0..5
#    if i > 2 then
#       break
#    end
#    puts "Value of local variable is #{i}"
# end
# This will produce following result:
# 
# Value of local variable is 0
# Value of local variable is 1
# Value of local variable is 2

# RETRY
#!/usr/bin/ruby
# 
# for i in 1..5
#    retry if  i > 2
#    puts "Value of local variable is #{i}"
# end
# This will produce following result and will go in an infinite loop:
# 
# Value of local variable is 1
# Value of local variable is 2
# Value of local variable is 1
# Value of local variable is 2
# Value of local variable is 1
# Value of local variable is 2
# ............................
# car = "Patriot"


# UNTIL
# Ruby until Statement:
# Syntax:
# 
# until conditional [do]
#    code
# end
# Executes code while conditional is false. An until statement's conditional is separated from code by the reserved word do, a newline, or a semicolon.
# 
# Example:
# 
# #!/usr/bin/ruby
# 
# $i = 0;
# $num = 5;
# 
# until $i > $num  do
#    puts("Inside the loop i = #$i" );
#    $i +=1;
# end
# This will produce following result:
# 
# Inside the loop i = 0
# Inside the loop i = 1
# Inside the loop i = 2
# Inside the loop i = 3
# Inside the loop i = 4
# Inside the loop i = 5
# Ruby until modifier:
# Syntax:
# 
# code until conditional
# 
# OR
# 
# begin
#    code
# end until conditional
# Executes code while conditional is false.
# 
# If an until modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.
# 
# Example:
# 
# #!/usr/bin/ruby
# 
# $i = 0;
# $num = 5;
# begin
#    puts("Inside the loop i = #$i" );
#    $i +=1;
# end until $i > $num
# This will produce following result:
# 
# Inside the loop i = 0
# Inside the loop i = 1
# Inside the loop i = 2
# Inside the loop i = 3
# Inside the loop i = 4
# Inside the loop i = 5

# super. couldn't find a good explanation for super.

# undef method_name
# can't be in the method def body.

# unless x == y, is same as if x != y
# just an inverted if

# while
# you know what it's about already. have confidence you can sort it out.

# yield
# http://fairleads.blogspot.com/2007/06/ruby-yield.html

# until is to while as if is to unless
# http://www.techotopia.com/index.php/Ruby_While_and_Until_Loops#unless_and_until