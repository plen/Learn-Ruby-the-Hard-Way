# This game is very crudely put together. Still has errors in it.
# Not ideal code by any stretch of the imagination.

class Room
  
  attr_accessor :name, :description, :paths, :max_tries
  
  def initialize(name, description, paths=nil, max_tries=nil)
    @name = name
    @description = description
    @paths = paths
    @max_tries = max_tries
  end
  
  def go(direction)
    @paths[direction]
  end
  
  def add_paths(paths)
    @paths.update(paths)
  end
end

class Death
  def initialize
    @you_lose_messages = [
      "You failed. You have made a thousand puppies worldwide sad.",
      "Try harder next time.",
      "Do it for the puppies!"
    ]
  end
  
  def give_user_puzzle # it is misnamed. Just displaying an end message.
    puts @you_lose_messages[rand(@you_lose_messages.length)]
    Process.exit(0)
  end
end

class Cemetery < Room
  def initialize
    super(
    "cemetery",
    "\tYou are in a cemetery set in thick woods. Before you stand a fluffy white dog wagging its appreciative tail, a beautiful siamese cat, and a bowl with a goldfish. You turn around and see the strangest thing. The cemetery is by a lake, and far across the lake, like past the edge of a storm, is a sunny beach with a parasol and beach towel spread on the sand. A narrow footbridge leads from the shore by your side to the faraway beach.
    You want to cross over to the sunny paradise, but you can't bear to leave the animals behind. You can only carry one of them with you at a time. In what sequence do you carry them over so that you don't leave the dog alone with the cat, or the cat alone with the goldfish?
    For example carrying the cat over, and then coming back empty handed to carry the dog over, and bring back the cat, will be \"cat-dogcat\".", 
    {"cat-dogcatgoldfish-cat" => Dog_Park, "cat-goldfishcatdog-cat" => Dog_Park, "cat-dogcatfish-cat" => Dog_Park, "cat-fishcatdog-cat" => Dog_Park},
    1
    )
  end
end

class Dog_Park < Room
  def initialize
    super(
    "dog_park",
    "\tYay! You successfully brought over all the animals. The goldfish seems to want to be in the lake so you release it. The cat mews and rubs against your legs gratefully before going its own way as well. Only the dog remains, wagging its tail and lookig at you expectantly.\n\tYou decide to take a walk with your new companion. The dog follows you happily as you decide to explore and head inland. The sun is bright and the breeze is cool. You walk past the sand and into some shrubbery. When you come out the other side you are in a dog park!\n\tTo your great surprise there are lots of people playing with their canine companions here. There's a watering hole for dogs, and pavillions for their owners to cool off and sip a drink. You approach the pavillion where you see that there are lockers. One of the lockers has your name on it. Bewildered, you decide to try to open it.")
  end
  
  def give_user_puzzle
    puts @description
    @correct_answer = rand(1000)
    puts @correct_answer
    prompt; user_input = gets.chomp
    
    if user_input = @correct_answer
      return Furry_Mouse
    else
      return Death.new.give_user_puzzle
    end    
  end
end

class Furry_Mouse < Room
  def initialize
    super(
    "furry_mouse",
    "\tUnder construction",
    {"foot" => "You Win!", "buggy" => "you furiously chase your dog, which disappeared in the bushes. On bursting through the bushes, you accidentally run over your dog! Oh no!"}, 1)
  end
end

class Game
  
  def initialize()
    @start = 0
  end
  
  def play(room)
    next_room = 1
    while next_room
      @start = room
      puts @start.description
      where_next = gets.chomp
      puts where_next
      next_room = @start.go(where_next)
      puts next_room
      room = next_room.new
    end
  # rescue
  #     return Death.new.give_user_puzzle
  end
end


a_game = Game.new
a_game.play(Cemetery.new)