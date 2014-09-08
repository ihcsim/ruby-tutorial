class Library
  def initialize(games)
    @games = games
  end

  def has_game?(search_game)
    @games.each do |game|
      if game.eql?(search_game)
        return true
      end
    end
    return false
  end

  def add_game(new_game)
    @games.push(new_game) unless @games.include?(new_game)
  end

  def count
    @games.count
  end

  attr_accessor :games
end
