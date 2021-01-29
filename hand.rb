class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def hit(deck)
    @cards << deck.cards.shift
  end

  def value
    cards.inject(0) { |sum, card| sum += card.value }
  end

  def serialize
    { cards: cards, value: value }
  end
end
