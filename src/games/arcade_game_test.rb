
require 'minitest/autorun'
require './arcade_game'

class TestArcadeGame < MiniTest::Unit::TestCase
  def setup
    @name = 'Street Fighter X'
    @ssytem = 'Atari'
    @year = 1997
    @weight = 565
    @new_game = ArcadeGame.new(@name, system:@system, year: @year, weight: @weight)
  end

  def test_can_create_arcade_game
    assert @new_game
  end

  def test_arcade_game_is_a_game
    assert ArcadeGame < Game
  end

  def test_arcade_game_has_parent_attributes
    assert_equal @name, @new_game.name
    assert_equal @system, @new_game.system
    assert_equal @year, @new_game.year
  end

  def test_arcade_game_has_weight_attribute
    assert_equal @weight, @new_game.weight
  end
end
