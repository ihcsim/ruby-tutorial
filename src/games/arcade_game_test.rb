
require 'minitest/autorun'
require 'active_support/all'
require './arcade_game'

class TestArcadeGame < MiniTest::Unit::TestCase
  def setup
    @name = 'Street Fighter X'
    @system = 'Atari'
    @year = 1997
    @release_date = DateTime.new(1995, 1, 31)
    @price = 299.99    
    @weight = 565
    @new_game = ArcadeGame.new(@name, system:@system, year: @year, release_date: @release_date, price: @price, weight: @weight)
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

  def test_to_s
    expected_string = "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s + ", Price: " + @price.to_s + ", Weight: " + @weight.to_s
    assert_equal expected_string, @new_game.to_s
  end

  def test_is_persistable
    assert_equal @new_game, @new_game.save
    assert @new_game.delete
  end
end
