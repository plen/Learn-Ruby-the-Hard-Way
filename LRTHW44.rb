# module Other
#   
#   def Other.override()
#     puts "OTHER override()"
#   end
#   
#   def Other.implicit()
#     puts "OTHER implicit()"
#   end
#   
#   def Other.altered()
#     puts "OTHER altered()"
#   end
# end
# 
# class Child
#   
#   def implicit()
#     Other.implicit()
#   end
#   
#   def override()
#     puts "CHILD override()"
#   end
#   
#   def altered()
#     puts "CHILD, BEFORE OTHER altered()"
#     Other.altered()
#     puts "CHILD, AFTER OTHER altered()"
#   end
# end
# 
# son = Child.new()
# 
# son.implicit()
# son.override()
# son.altered()

# _____part 3_____
# class Parent
# 
#   def override()
#     puts "PARENT override()"
#   end
# 
#   def implicit()
#     puts "PARENT implicit()"
#   end
# 
#   def altered()
#     puts "PARENTS altered()"
#   end
# 
# end
# 
# class Child < Parent
# 
#   def override()
#     puts "CHILD override()"
#   end
# 
#   def altered()
#     puts "CHILD, BEFORE PARENT altered()"
#     super()
#     puts "CHILD, AFTER PARENT altered()"
#   end
# end
# 
# dad = Parent.new()
# son = Child.new()
# 
# dad.implicit()
# son.implicit()
# 
# dad.override()
# son.override()
# 
# dad.altered()
# son.altered()
# 
# _____part 1_____
# $x = 0
# 
# class Parent
# 
#   def override()
#     $x = 1
#   end
# end
# 
# class Child < Parent
# 
#   def override()
#     $x = 2
#   end
# end
# 
# dad = Parent.new()
# son = Child.new()
# 
# dad.override()
# son.override()
# 
# puts $x

# _____part 2_____
class Parent
  
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()