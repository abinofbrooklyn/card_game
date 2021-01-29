class Player
  attr_reader :name, :hand

  def initialize(name, hand)
    @name = name
    @hand = hand
  end

  def hand_value
    @hand.value
  end
end
