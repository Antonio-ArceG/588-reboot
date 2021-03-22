require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

# PSEUDOCODE
# set bank_score
# set player score variable

# ask user if they want to draw card (get input)
  # if yes
    # return random card from deck
    # add new card value to the player score
    # return state of the game
    # re-fire loop until we bust or we say no more

# return end of game message

puts "*.*.*.Welcome to  CASINO 588!!!.*.*.*"

bank_score = pick_bank_score
player_score = 0
running = true

while running

  puts "Would you like to draw a card? Y/N?"
  player_answer = gets.chomp.upcase
  print `clear`

  if player_answer == 'Y'
    player_score += pick_player_card
    puts state_of_the_game(player_score, bank_score)
    running = player_score < 21 # program will stop when you bust
  elsif player_answer == 'N'
    running = false
  else
    puts "Wrong answer, please type 'Y' or 'N'"
  end
end

puts end_game_message(player_score, bank_score)
