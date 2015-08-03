class Game
  @game_count = 1

  def self.game_count
    @game_count
  end
end

class Game1 < Game
  def print_game_count(game)
    p @game_count
    p Game.game_count
  end
end

game = Game.new
Game1.new.print_game_count(game)
