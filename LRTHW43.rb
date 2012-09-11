require yard
class Game
  
  def initialize(start)
    @quips = [
      "You died. You kinda suck at this.",
      "Nice job, you died... jackass.",
      "Such a lewser.",
      "I have a small puppy that's better than you at this."
      ]
      @start = start
    end
    
    def prompt()
      print "> "
    end
    
    def play()
      next_room = @start
      
      while true
        puts "\n----------"
        room = method(next_room)
        next_room = room.call()
      end
    end
    
    def death()
      puts @quips[rand(@quips.length())]
      Process.exit(1)
    end
    
    descriptions = {
      
    }
#The Gothons of Planet Percii #25 have invaded your ship and destroyed your entire crew. You are the last surviving member and your last mission is to get the neutron destruct bomb from the Weapons Armory, put it in the bridge, and blow the ship up after getting into an escape pod. \nYou're running down the central corridor to the Weapons Armory when a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume flowing around his hate filled body. He's blocking the door to the Armory and about to pull a weapon to blast you.\nWhat now?
    def central_corridor()
      print <<-CENTRAL_CORRIDOR_HEREDOC
The Gothons of Planet Percii #25 have invaded your ship and destroyed your entire crew. You are the last surviving member and your last mission is to get the neutron destruct bomb from the Weapons Armory, put it in the bridge, and blow the ship up after getting into an escape pod. \nYou're running down the central corridor to the Weapons Armory when a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume flowing around his hate filled body. He's blocking the door to the Armory and about to pull a weapon to blast you.\nWhat now? >>
CENTRAL_CORRIDOR_HEREDOC
      
      prompt()
      action = gets.chomp()
      
      if  action.include? "shoot"
        puts <<-shoot_heredoc
        Quick on the draw you yank out your blaster and fire it at the Gothon. His clown costumer is flowing and moving around his body which throws off your aim. Your laser hits his costumer but misses him entirely. This completely ruins his brand new costumer his mother bought him, which makes him fly into an insane rage and blast you repeatedly in the face until you are dead. Then he eats you.
          shoot_heredoc
return :death
      
      elsif action.include? "dodge"
        puts <<-dodge_heredoc
        Like a world class boxer you dodge, weave, slip and slide right as the Gothon's blaster cranks a laser past your head. In the middle of your artful dodge your foot slips and you bang your head on the metal wall and pass out. You wake up shortly after only to die as the Gothon stomps on your head and eats you.
          dodge_heredoc
return :death

      elsif action.include? "kick it in the balls"
        puts <<-balls_heredoc
With the grace and speed of a trained cadet officer, you issue a swift kick to the groin of the Gothon. Your boot rattles off the underside of the Gothon's scrotum codpiece painfully. The Gothon laughs and chews your head off where you stand.
              balls_heredoc
        return :death
      
      elsif action.include? "tell a joke"
        puts <<-joke_heredoc
        Lucky for you they made you learn Gothon insults in the academy. You tell the one Gothon joke you know:
        "Lbhe zbgure vf sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
The Gothon stops, tries not to laugh, then busts out laughing and can't move. While he's laughing you run up and shoot him square in the head putting him down, then jump through the Weapon Armory door.
        joke_heredoc
return :laser_weapon_armory

    else
      puts "DOES NOT COMPUTE!"
      return :central_corridor
    end
  end
  
  def laser_weapon_armory()
    puts <<-laser_weapon_armory
    You do a dive roll into the Weapon Armory, crouch and scan the room for more Gothons that might be hiding. It's dead quiet, too quiet. You stand up and run to the fair side of the room and find the neutron bomb in its container. There's a keypad lock on teh box and you need the code to get the bomb out. If you get the code wrong 10 times then the lock closes forever and you can't get the bomb. The code is 3 digits.
laser_weapon_armory
    code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
    print "[keypad]>"
    guess = gets.chomp()
    guesses = 0
    
    while guess != code and guesses < 10
      puts "BZZZZEDDD!"
      guesses += 1
      print "[keypad]>"
      guess = gets.chomp()
    end
    
    if guess = code
      puts <<-guessed_right_heredoc
      The container clicks open and the seal breaks, lettting gas out. You grab the neutron bomb and run as fast as you can to the bridge where you must place it in the right spot.
guessed_right_heredoc
      return :the_bridge
    else
      puts <<-guessed_wrong_heredoc
      The lock buzzes one last time and then you hear a sickening melting sound as the mechanism is fused together. You decide to sit there, and finally the Gothons blow up the shop from their ship as you die.
guessed_wrong_heredoc
      return :death
    end
  end
  
  def the_bridge()
    puts <<-the_bridge_heredoc
You burst onto the Bridge with the neutron destruct bomb under your arm and surprise the 5 Gothons who are trying to take control of the ship. Each of them has an even uglier clown costumer than the last. They haven't pulled their weapons out yet, as they see the active bomb under your arm and don't want to set it off.
        the_bridge_heredoc
    
    prompt()  
    action = gets.chomp()
    
    if action.include? "throw the bomb"
      puts <<-throw_bomb_heredoc
In a panic you throw the bomb at the group of Gothons and make a leap for the door. Right as you drop it a Gothon shoots you right in the back killing you. As you die you see another Gothon frantically trying to disarm the bomb. You die knowing that they will probably blow up when it goes off.
        throw_bomb_heredoc
      return :death
      
    elsif action.include? "slowly place the bomb"
      puts <<-place_bomb_heredoc
You point your blaster at the bomb under your arm and the Gothons put their hands up and start to sweat. You inch backward to the door, open it, and then carefully place the bomb on the floor, pointing your blaster at it. You then jump back through the door, punch the close button and blast the lock so the Gothons can't get out. Now that the bomb is placed you run to the escape pod to get off this tin can.
          place_bomb_heredoc
      return :escape_pod
    else
      puts "DOES NOT COMPUTE!"
      return :the_bridge
    end
  end
  
  def escape_pod()
    puts <<-escape_pod_heredoc
You rush through the ship desperately trying to make it to the escape pod before the whole ship explodes. It seems like hardly any Gothons are on teh ship, so your run is clear of interference. You get to the chamber with the escape pods, and now need to pick one to take. Some of them could be damaged but you don't have time to look. There's 5 pods, which one do you take?
            escape_pod_heredoc
    
    good_pod = rand(5)+1
    print "[pod #]>"
    guess = gets.chomp()
    
    if guess.to_i != good_pod or guess == "cheat"
      puts <<-bad_pod_heredoc
You jump into pod #{guess} and hit the eject button. The pod escapes out into the void of space, then implodes as the hull ruptures, crushing your body into jam jelly.
            bad_pod_heredoc
      return :death
    else
      puts <<-good_pod_heredoc
      You jump into pod #{guess} and hit the eject button. The pod easily slides out into space heading to the planet below. As it flies to the planet, you look back and see your ship implode and then explode like a bright star, taking out the Gothon ship at the same time. You won!
            good_pod_heredoc
      Process.exit(0)
    end
  end
end


a_game = Game.new(gets.chomp)
a_game.play()