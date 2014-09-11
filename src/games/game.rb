require './invalid_game_error'
require './persistable'

class Game
  include Persistable

  def initialize(name, options=[])
    raise InvalidGameError unless name
    @name = name
    @year = options[:year]
    @system = options[:system]
    @release_date = options[:release_date]
    @created_on = DateTime.now
  end

  def to_s
    "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s
  end

  def anniversary(accrue_years)
    @release_date.advance(years: accrue_years)
  end

  attr_accessor :name, :year, :system, :release_date
  attr_reader :created_on
end
