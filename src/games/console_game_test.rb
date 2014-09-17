
require 'minitest/autorun'
require 'active_support/all'
require './console_game'

class TestConsoleGame < MiniTest::Unit::TestCase
  def setup
    @name = 'Final Fantasy 4'
    @system = 'SNES'
    @year = '1997'
    @release_date = DateTime.new(1999, 7, 28)
    @price = 19.99
    @new_game = ConsoleGame.new(@name, system:@system, year:@year, release_date: @release_date, price: @price)
  end

  def test_can_create_console_game
    assert @new_game
  end

  def test_can_read_console_game_attributes
    assert_equal @name, @new_game.name
    assert_equal @system, @new_game.system
    assert_equal @year, @new_game.year
  end

  def test_is_persistable
    assert_equal @new_game, @new_game.save
    assert @new_game.delete
  end
end
