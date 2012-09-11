#module make_change_module
  def make_change(amount, coins = [3,59,503,23,17,2,1])
    amount_int = amount.to_i
    coins.sort.reverse.map{|coin| f = amount_int/coin
      amount_int %= coin
      Array.new(f){coin}}
  end
  
puts "Let's break up a number.Type in a number."
puts make_change(gets.chomp())


#!{|a,b| b <=> a}