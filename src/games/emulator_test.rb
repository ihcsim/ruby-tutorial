require 'minitest/test'
require 'minitest/autorun'
require './emulator'
require './game'
require 'active_support/all'

class TestEmulator < Minitest::Test
  def setup
    system = 'PS1'
    @game = Game.new('Mario Cart', system:system)
    @emulator = Emulator.new(@game)
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

  def test_can_retrieve_session
    assert @emulator.session
  end

  def test_unique_session_for_different_emulators
    emulator2 = Emulator.new(@game)
    assert @emulator.session != emulator2.session
  end
end
