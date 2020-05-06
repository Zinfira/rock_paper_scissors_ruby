#!/usr/bin/ruby

require ('./lib/rock_paper_scissors')
def greeting
  puts("Let's play")
end

game = RPS.new()


until (game.score1 === 3) | (game.score2 === 3)
  puts 'Player starts the game:'
  hand1 = gets.chomp
  hand2 = game.computer
  game.setPlayerHand(hand1)
  puts "my turn:" + game.hand1
  puts "computer turn:" + game.hand2

  winValue = game.wins?
  if (winValue == "TIE") 
    puts "TIE"
  elsif (winValue == true)
    puts "Player 1 is a winner"
  else
    puts "You are a loser"
  end
end

