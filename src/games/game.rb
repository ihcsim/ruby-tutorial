
require './invalid_game_error'

class Game
  def initialize(name, options=[])
    raise InvalidGameError unless name
    @name = name
    @year = options[:year]
    @system = options[:system]
    @created_at = Time.now
  end

  attr_accessor :name, :year, :system
  attr_reader :created_at
end
