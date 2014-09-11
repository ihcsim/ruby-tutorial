require 'minitest/autorun'
require './emulator'
require './game'
require 'active_support/all'

class TestEmulator < MiniTest::Unit::TestCase
  def setup
    system = 'PS1'
    game = Game.new('Mario Cart', system:system)
    @emulator = Emulator.new(game)
  end

  def test_can_create_emulator
    assert @emulator
  end

  def test_can_play_game
    @emulator.play
    assert @emulator.game_started
  end

  def test_can_exit_game
    @emulator.exit
    assert (not @emulator.game_started)
  end

  def test_can_take_screenshots
    @emulator.screenshot
    assert @emulator.screenshots_count > 0
  end
end
