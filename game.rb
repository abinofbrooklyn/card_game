class Game
  attr_reader :player_hand, :dealer_hand

  ROUND_ROBIN_DEALS = 2
  NUMBER_PLAYERS = 5

  def initialize
    @deck = Deck.new
    @players = NUMBER_PLAYERS.times.map { |x| Player.new( "Player #{x+1}", Hand.new) }
    @dealer = Player.new("Dealer", Hand.new)

    ROUND_ROBIN_DEALS.times do
      @players.each do |player|
        player.hand.hit(@deck)
      end

      @dealer.hand.hit(@deck)
    end
  end

  def stand
    @winner = determine_winner(@players.max_by(&:hand_value), @dealer)
  end

  def status
    { players:  @players.map { |player|  player.hand.serialize }, dealer: @dealer.hand.serialize , winner: @winner }
  end

  def determine_winner(player, dealer)
    if player.hand_value == dealer.hand_value
      :draw
    else
      winner = [player, dealer].max_by { |p| p.hand_value }
      winner.name
    end
  end

  def inspect
    status
  end
end
