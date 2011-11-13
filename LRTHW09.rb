# HEREDOC, escape sequences intro

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days:", days
puts "Here are the months:", months

# This here is called a HEREDOC.
# In some cases, it's a better idea to start it with "<<-" than just "<<"

puts <<PARAGRAPH
There's something going on here.
with the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH
