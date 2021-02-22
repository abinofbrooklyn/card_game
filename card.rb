class Card
  attr_reader :suit, :face_value

  def initialize(suit, face_value)
    @suit = suit
    @face_value = face_value
  end

  def value
    return 10 if [:J, :Q, :K].include?(@face_value)
    return 11 if @face_value == :A
    return @face_value
  end

  def to_s
    "#{@face_value}-#{@suit}"
  end

end
