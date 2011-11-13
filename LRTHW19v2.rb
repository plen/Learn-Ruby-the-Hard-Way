# functions, and passing values to functions, football-style

home_Team, away_Team, home_Goals, away_Goals = ARGV

def game_tracker(home_team, away_team, home_goals, away_goals)
  home_s, away_s = nil
  if home_goals.to_i != 1
    home_s = "s"
  end
  if away_goals.to_i != 1
    away_s = "s"
  end
  if home_goals.to_i + away_goals.to_i > 3
    puts "#{home_team} played out a thrilling match against rivals #{away_team} in which they gave away #{away_goals} goal#{away_s} but scored #{home_goals} goal#{home_s}."
  else
    puts "#{home_team} played out a drab match against defiant opponents #{away_team} in which they scored #{home_goals} goal#{home_s} and conceded #{away_goals}."
end
end

#game_tracker(ARGV[0], ARGV[1], home_Goals, away_Goals)
#game_tracker(ARGV[0], ARGV[1], ARGV[2], ARGV[3])
game_tracker(home_Team, away_Team, home_Goals, away_Goals)