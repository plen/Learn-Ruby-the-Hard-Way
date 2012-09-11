# modules are collections of methods and constants. no classes possible.
require './levels.rb' 

class Game
  
  def initialize()
    @start = 0
  end
  
  def play(room)
    while true
      @start = room
      next_room = @start.give_user_puzzle
      room = next_room.new
    end
    
    # when the result of give_user_puzzle isn't a class name,
    # we are thrown an exception, which we know is a string we need to print 
    rescue
      puts next_room
  end
end


a_game = Game.new
a_game.play(Cemetery.new)