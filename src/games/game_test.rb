
require 'minitest/autorun'
require 'active_support/all'
require './game'
require './emulator'
require './invalid_game_error'
require './attr_setter'

class TestGames < MiniTest::Unit::TestCase
  def setup
    @name = 'Street Fighter'
    @year = 1992
    @release_date = DateTime.new(1992,2,20)
    @system  = 'SNES'
    @price = 29.99
    @sf_game = Game.new(@name, year:@year, system:@system, release_date: @release_date, price: @price)
  end

  def test_can_create_new_game
    assert @sf_game, "Object shouldn't be nil."
  end

  def test_can_read_game_attrs
    assert_equal @name,@sf_game.name
    assert_equal @year,@sf_game.year
    assert_equal @system,@sf_game.system
    assert_equal @release_date, @sf_game.release_date
    assert_equal @price, @sf_game.price
  end

  def test_name_must_exist
    assert_raises InvalidGameError do
     @bad_game = Game.new(nil, year:@year, system:@system)
    end
  end

  def test_to_s
    expected_string = "Name: " + @name + ", System:: " + @system  + ", Year: " + @year.to_s + ", Price: "+ @price.to_s
    assert_equal expected_string, @sf_game.to_s
  end

  def test_game_anniversary
    accrue_years = 4
    expected_anniversary_year = @release_date.advance(years: accrue_years)
    assert_equal expected_anniversary_year, @sf_game.anniversary(accrue_years)
  end

  def test_is_persistable
    assert_equal @sf_game, @sf_game.save
    assert @sf_game.delete
  end

  def test_created_on_timestamp
    @sf_game.extend(TestAttributeSetter)
    timestamp = DateTime.new(2014, 9, 10, 20, 30, 8)
    @sf_game.fixed_timestamp(timestamp)
    assert_equal timestamp, @sf_game.created_on
  end

  def test_can_play
    @sf_game.play
    assert @sf_game.game_started
  end

  def test_can_stop
    @sf_game.exit
    assert (not @sf_game.game_started)
  end

  def test_can_take_screenshots
    @sf_game.screenshot
    assert (@sf_game.screenshots_count > 0)
  end

  def test_session_remains_constant
    expected_session = @sf_game.session
    @sf_game.play
    @sf_game.screenshot
    @sf_game.exit
    assert_equal expected_session, @sf_game.session
  end
end
