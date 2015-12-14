class Computer
  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

  attr_reader :move

  def choose_move
    self.move = WEAPONS.sample
  end

  private
  attr_writer :move
end
