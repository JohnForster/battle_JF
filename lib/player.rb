# A player for the Battle game.
class Player
  attr_reader :name, :morale

  def initialize(name)
    @name = name
    @morale = 60
  end

  def reduce
    @morale -= 10
  end

end
