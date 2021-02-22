class Card
  attr_reader :suit

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def value
    return 10 if [:J, :Q, :K].include?(@value)
    return 11 if @value == :A
    return @value
  end

  def to_s
    "#{@value}-#{@suit}"
  end

end
