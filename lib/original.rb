WIN_MAX = 2

wins = {
  player: 0,
  computer: 0
}

character_map = {
  "r" => "rock",
  "p" => "paper",
  "s" => "scissors"
}

while wins[:player] < WIN_MAX && wins[:computer] < WIN_MAX
  #print the score of the game
  puts "Player Score: #{wins[:player]}, Computer Score: #{wins[:computer]}"
  player_choice = nil

  #play a round
  while character_map[player_choice].nil?
    print "Choose rock (r), paper (p), or scissors (s): "
    player_choice = gets.chomp
  end

  computer_choice = ['r', 'p', 's'].sample

  puts "Player chose #{character_map[player_choice]}."
  puts "Computer chose #{character_map[computer_choice]}"

  # determine winner
  winner = nil
  if player_choice == computer_choice
    winner = nil
  elsif player_choice == 'r' && computer_choice == 'p'
    winner = :computer
  elsif player_choice == 'r' && computer_choice == 's'
    winner = :player
  elsif player_choice == 's' && computer_choice == 'r'
    winner = :computer
  elsif player_choice == 's' && computer_choice == 'p'
    winner = :player
  elsif player_choice == 'p' && computer_choice == 'r'
    winner = :computer
  elsif player_choice == 'p' && computer-choice == 's'
    winner = :player
  end

  #output results
  if winner == :computer
    puts "#{character_map[computer_choice]} beats #{character_map[player_choice]}"
    puts "Computer wins!"
  elsif winner
    puts "#{character_map[player_choice]} beats #{character_map[computer_choice]}"
    puts "Player wins!"
  else
    puts "It's a tie"
  end

  #increment count for the game
  if !winner.nil?
    wins[winner] += 1
  end
end
