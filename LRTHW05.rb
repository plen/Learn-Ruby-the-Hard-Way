#right now, program yields negative values for hours, days, months.

year = Time.new.year
hours = "hour"
days = "day"
months = "month"
ruby_learning_duration_in_hours = Time.new.hour - 12
ruby_learning_duration_in_days = Time.new.day - 27
ruby_learning_duration_in_months = Time.new.month - 8
def is_number(s)
  (s =~/\d+/) != nil
end

def singular_or_plural(term, count)
  if count <= 0
    term = nil
  elsif count == 1
    term = "#{count} #{term}"
  elsif count > 1
    term = "#{count} #{term}s"
  end
  return term
end

months = singular_or_plural(months, ruby_learning_duration_in_months)
days = singular_or_plural(days, ruby_learning_duration_in_days)
hours = singular_or_plural(hours, ruby_learning_duration_in_hours)

my_name = "Ng Wei Leen"
my_dob = 1984
my_age = - my_dob + year
my_height_cm = 165
my_mass_kg = 58

my_height_feet = my_height_cm * 3.2808399 / 100
my_height_remainder_inches = my_height_feet % 1 * 12
my_mass_lb = my_mass_kg * 2.20462262

#"%" tells Ruby, hey this is a format string, put these variables in here
puts "Let's talk about %s." %my_name 
puts "It is %s his height is in numbers." % is_number(my_height_cm)
puts "He's %d feet %d inches tall, which is a whopping %d cm!" % [my_height_feet, my_height_remainder_inches, my_height_cm]
puts "He's %d pounds heavy. That is %d kilograms for non-Americans." % [my_mass_lb, my_mass_kg]
puts "If you must know his weight, it is %d Newtons at sea level." % [my_mass_kg * 9.81]
puts "I have been learning Ruby for #{months} #{days} #{hours}."
