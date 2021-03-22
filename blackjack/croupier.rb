require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}. The bank's is #{bank_score} "
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21
    "You are a loser (BUSTED)!!! :'(
    Your score is: #{player_score}
    Bank score is: #{bank_score}"
  elsif player_score == 21
    "Black Jack!!! :O
    Your score is: #{player_score}
    Bank score is: #{bank_score}"
  elsif player_score > bank_score
    "A winner is you!!! :O
    Your score is: #{player_score}
    Bank score is: #{bank_score}"
  elsif player_score == bank_score
    "You draw (PUSH)!!! get your money back!!! :)
    Your score is: #{player_score}
    Bank score is: #{bank_score}"
  else
    "LOSSSSSEEEER!!!! >:(
    Your score is: #{player_score}
    Bank score is: #{bank_score}"
  end
end
