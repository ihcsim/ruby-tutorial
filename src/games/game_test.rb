
require 'minitest/autorun'
require './game'
require './invalid_game_error'

class TestGames < MiniTest::Unit::TestCase
  def setup
    @name = 'Street Fighter'
    @year = 1992
    @system  = 'SNES'
    @sf_game = Game.new(@name, year:@year, system:@system)
  end

  def test_can_create_new_game
    assert @sf_game, "Object shouldn't be nil."
  end

  def test_can_read_game_attrs
    assert_equal @name,@sf_game.name
    assert_equal @year,@sf_game.year
    assert_equal @system,@sf_game.system
  end

  def test_name_must_exist
    assert_raises InvalidGameError do
     @bad_game = Game.new(nil, year:@year, system:@system)
    end
  end
end
