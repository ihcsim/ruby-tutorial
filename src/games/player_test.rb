
require 'minitest/autorun'
require './player'

class TestPlayer < MiniTest::Unit::TestCase
  def setup
    @favourites = ['Street Fighter 2', 'Final Fantasy 3', 'Metroid']
    @player = Player.new
    @player.favourites = @favourites
  end

  def test_can_create_player
    assert @player
  end

  def test_can_read_player_favorites
    assert_equal @favourites, @player.favourites
  end

end
