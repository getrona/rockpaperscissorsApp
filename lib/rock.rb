class String
  define_method(:beats?) do | player2 |
    if self == "rock" and player2== "scissors"
      "Player 1 Winner"
  elsif self == "scissors" and player2 =="paper"
      "Player 1 Winner"
  elsif self == "paper" and player2 == "rock"
      "Player 1 Winner"
  elsif self==player2
      "tie"
  else
      "Player 2 Winner"
    end
  end
end

print "scissors".beats?('paper')
