# class Levels
#   def initialize
#     level_description = ""
#   end
# end
def prompt
  print ">>"
end

class Level
  def initialize(description, correct_answer = nil, result_for_correct_answer = nil, result_for_wrong_answer = nil, max_tries = nil)
    @description = description
    @correct_answer = correct_answer
    @result_for_correct_answer = result_for_correct_answer
    @result_for_wrong_answer = result_for_wrong_answer
    @max_tries = max_tries
  end
  
  def give_user_puzzle
    puts @description
    prompt; user_input = gets.chomp
    if user_input == @correct_answer
      return @result_for_correct_answer
    else
      return @result_for_wrong_answer
    end
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

class Cemetery < Level
  def initialize
    super("\tYou are in a cemetery set in thick woods. Before you stand a fluffy white dog wagging its appreciative tail, a beautiful siamese cat, and a bowl with a goldfish. You turn around and see the strangest thing. The cemetery is by a lake, and far across the lake, like past the edge of a storm, is a sunny beach with a parasol and beach towel spread on the sand. A narrow footbridge leads from the shore by your side to the faraway beach.
    You want to cross over to the sunny paradise, but you can't bear to leave the animals behind. You can only carry one of them with you at a time. In what sequence do you carry them over so that you don't leave the dog alone with the cat, or the cat alone with the goldfish?
    For example carrying the cat over, and then coming back empty handed to carry the dog over, and bring back the cat, will be \"cat-dogcat\".", "cat-dogcatgoldfish-cat", Dog_Park, Death)
  end
end

class Dog_Park < Level
  def initialize
    super("\tYay! You successfully brought over all the animals. The goldfish seems to want to be in the lake so you release it. The cat mews and rubs against your legs gratefully before going its own way as well. Only the dog remains, wagging its tail and lookig at you expectantly.\n\tYou decide to take a walk with your new companion. The dog follows you happily as you decide to explore and head inland. The sun is bright and the breeze is cool. You walk past the sand and into some shrubbery. When you come out the other side you are in a dog park!\n\tTo your great surprise there are lots of people playing with their canine companions here. There's a watering hole for dogs, and pavillions for their owners to cool off and sip a drink. You approach the pavillion where you see that there are lockers. One of the lockers has your name on it. Bewildered, you decide to try to open it.")
  end
  
  def give_user_puzzle
    puts @description
    @correct_answer = rand(1000)
    puts @correct_answer
    prompt; user_input = gets.chomp
    
    if user_input = @correct_answer
      return Furry_Mouse
    else
      return Death
    end    
  end
end

class Furry_Mouse < Level
  def initialize
    super("\tUnder construction", "foot", "You Win!", "you furiously chase your dog, which disappeared in the bushes. On bursting through the bushes, you accidentally run over your dog! Oh no!")
  end
end