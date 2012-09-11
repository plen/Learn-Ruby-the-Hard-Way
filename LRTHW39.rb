# create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
#  'CA' => 'San Francisco',
  'CA' => ['San Francisco', 'Palo Alto'],
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
print "NY state has: ", cities['NY'], "\n"
print "OR state has: ", cities['OR'], "\n"

# puts some states
puts "-" * 10
print "Michigan's abbreviation is: ", states['Michigan'], "\n"
print "Florida's abbreviation is: ", states['Florida'], "\n"

# do it by using the state then cities dict
puts '-' * 10
print "Michigan has: ", cities[states['Michigan']], "\n"
print "Florida has: ", cities[states['Florida']], "\n"

# puts every state abbreviation
puts '-' * 10
for state, abrv in states
  puts "%s is abbreviated as %s" % [state, abrv]
end

# puts every city in state
puts '-' * 10
for abbrev, city in cities
  puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for state, abbrev in states
  puts "%s state is abbreviated %s and has city %s." % [state, abbrev, cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']

if not state
  puts "Sorry, no Texas."
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city