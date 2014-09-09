
require 'minitest/autorun'
require './console_game'

class TestConsoleGame < MiniTest::Unit::TestCase
  def setup
    @name = 'Final Fantasy 4'
    @system = 'SNES'
    @year = '1997'
    @new_game = ConsoleGame.new(@name, system:@system, year:@year)
  end

  def test_can_create_console_game
    assert @new_game
  end

  def test_can_read_console_game_attributes
    assert_equal @name, @new_game.name
    assert_equal @system, @new_game.system
    assert_equal @year, @new_game.year
  end
end

