class Game
  RULES = { rock: [:scissors, :lizard],
            scissors: [:paper, :lizard],
            paper: [:rock, :spock],
            spock: [:scissors,:rock],
            lizard: [:paper, :spock]
          }

  def winner player_move, computer_move
    return :draw if player_move == computer_move
    p judge(player_move, computer_move) 
    judge(player_move, computer_move) ? :win : :lose
  end

  def judge player_move, computer_move
    RULES[player_move.to_sym].any? do |move|
      p move
      move == computer_move.to_sym
    end
  end
end
