
require 'minitest/autorun'
require 'active_support/all'
require './game'
require './invalid_game_error'

class TestGames < MiniTest::Unit::TestCase
  def setup
    @name = 'Street Fighter'
    @year = 1992
    @release_date = DateTime.new(1992,2,20)
    @system  = 'SNES'
    @sf_game = Game.new(@name, year:@year, system:@system, release_date: @release_date)
  end

  def test_can_create_new_game
    assert @sf_game, "Object shouldn't be nil."
  end

  def test_can_read_game_attrs
    assert_equal @name,@sf_game.name
    assert_equal @year,@sf_game.year
    assert_equal @system,@sf_game.system
    assert_equal @release_date, @sf_game.release_date
  end

  def test_name_must_exist
    assert_raises InvalidGameError do
     @bad_game = Game.new(nil, year:@year, system:@system)
    end
  end

  def test_to_s
    expected_string = "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s
    assert_equal expected_string, @sf_game.to_s
  end

# def test_game_anniversary
#   accrue_years = 4
#   expected_anniversary_year = 1996
#   assert_equal expected_anniversary_year, @sf_game.anniversary(accrue_years)
# end
end
