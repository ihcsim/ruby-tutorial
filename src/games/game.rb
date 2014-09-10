require './invalid_game_error'

class Game
  def initialize(name, options=[])
    raise InvalidGameError unless name
    @name = name
    @year = options[:year]
    @system = options[:system]
    @release_date = options[:release_date]
    @created_at = Time.now
  end

  def to_s
    "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s
  end

  def anniversary(accrue_years)
    @release_date.advance(years: accrue_years)
  end

  attr_accessor :name, :year, :system, :release_date
  attr_reader :created_at
end
