## Animal is-a object Look at the extra credit
class Animal
  def initialize()
    @identity = "I am an Animal"
  end
  @identity = "I am an Animal still"
  attr_accessor :identity
end

## Dog is-a Animal, has-a initialize
class Dog < Animal
  
  def initialize(name)
    ## Dog has-a name
    @name = name
    ## Dog has an identity
    @identity = "I am a Dog"
  end
  
  attr_accessor :identity, :name
end

## Cat is-a animal, has-a initialize
class Cat < Animal
  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person has-a initialize
class Person
  def initialize(name)
    ## Person has-a name
    @name = name
    
    ## Person has-a pet of some kind
    @pet = "My unnamed pet"
  end
  
  attr_accessor :pet
end

## Employee is-a person
class Employee < Person
  def initialize(name, salary)
    ## instantiate the superclass with the name parameter? correct?
    super(name)
    ## ??
    @salary = salary
  end
  
  attr_accessor :salary
end

## ??
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a person
mary = Person.new("Mary")

mary.pet = satan

## frank is-a Employee with salary = 120000
frank = Employee.new("Frank", 120000)

puts frank.pet

## from frank, get the pet attribute and set it to rover
frank.pet = rover

puts frank.pet.name
puts frank.salary

## flipper is-a fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

