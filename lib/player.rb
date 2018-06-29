# A player for the Battle game.
class Player
  attr_reader :name, :morale

  def initialize(name)
    @name = name
    @morale = 60
  end

  def feel_hurt
    @morale -= 10
  end

  def insult(player)
    player.feel_hurt
  end
end
