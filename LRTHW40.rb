require './LRTHW40_mystuff.rb'

MyStuff.apple()

puts MyStuff::TANGERINE

# ________________________

class Song
  
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song(lyrical)
    for line in lyrical
      puts line
    end
  end
end

happy_bday_lyrics = ["Happy birthday to you",
"I don't want to get sued",
"So I'll stop right there"]

#happy_bday = Song.new

Song.new("Boo").sing_me_a_song(happy_bday_lyrics)

# happy_bday = Song.new(["Happy birthday to you",
# "I don't want to get sued",
# "So I'll stop right there"])

# bulls_on_parade = Song.new(["They rally around the family",
#   "With pockets full of shells"])
  
  
# happy_bday.sing_me_a_song()

# bulls_on_parade.sing_me_a_song()