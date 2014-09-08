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

  attr_accessor :games
end
