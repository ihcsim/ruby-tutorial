require './invalid_game_error'
require './persistable'
require './emulation'

class Game
  include Persistable
  include Emulation

  def initialize(name, options=[])
    raise InvalidGameError unless name
    @name = name
    @year = options[:year]
    @system = options[:system]
    @release_date = options[:release_date]
    @price = options[:price]
    @created_on = DateTime.now
    @game_started = false
    @emulator = nil
  end

  def to_s
    "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s + ", Price: " + @price.to_s
  end

  def anniversary(accrue_years)
    @release_date.advance(years: accrue_years)
  end

  def play
    operation = Proc.new do |emulator| 
      emulator.play
    end
    emulate(operation)
  end

  def exit
    operation = Proc.new do |emulator|
      emulator.exit
    end
    emulate(operation)
  end

  def screenshot
    operation = Proc.new do |emulator| 
      emulator.screenshot
    end
    emulate(operation)
  end

  def screenshots_count
    operation = Proc.new do |emulator|
      return emulator.screenshots_count
    end
    emulate(operation)
  end

  def session
    operation = Proc.new do |emulator|
      return @emulator.session
    end
    emulate(operation)
  end

  attr_accessor :name, :year, :system, :release_date, :price
  attr_reader :created_on, :game_started
end
