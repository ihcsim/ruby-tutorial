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

  def save_all
    @games.each do |game|
      game.save
    end
  end

  def delete_all
    @games.each do |game|
      game.delete
    end
    @games.clear
  end

  def is_empty?
    @games.count == 0
  end

  def list_games
    list_games_by_system
  end

  def list_games_by_system(system = nil)
    games = []
    @games.each do |game|
      games.push(game) unless (system &&  game.system  != system)
    end
    games
  end

  def collect_by_system(system)
    @games.each do |game|
      yield game unless game.system != system
    end
  end

  attr_accessor :games
end
