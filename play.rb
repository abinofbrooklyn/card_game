require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "game"
require_relative "player"

g = Game.new

STDOUT.puts '----------------'
STDOUT.puts 'The Winner is:'
STDOUT.puts '----------------'
STDOUT.puts g.stand

# STDOUT.puts '----------------'
# STDOUT.puts 'See the hands'
# STDOUT.puts '----------------'
# STDOUT.puts g.inspect
