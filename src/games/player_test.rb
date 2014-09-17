require 'minitest/test'
require 'minitest/autorun'
require './player'

class TestPlayer < Minitest::Test
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

  def test_players_favourites_differences
    player2 = Player.new
    player2.favourites = ['Final Fantasy 3', 'Pokemon 1st Gen', 'Contraband']
    expected_differences = ['Street Fighter 2', 'Metroid', 'Pokemon 1st Gen', 'Contraband']
    assert_equal expected_differences, @player.diff_favs(player2)
  end

  def test_players_same_favourites
    player2 = Player.new
    player2.favourites = ['Final Fantasy 3', 'Pokemon 1st Gen', 'Contraband']
    expected_differences = ['Final Fantasy 3']
    assert_equal expected_differences, @player.same_favs(player2)
  end

  def test_is_persistable
    assert_equal @player, @player.save
    assert @player.delete
  end
end
