
require 'minitest/autorun'
require './game'
require './library'

class TestLibrary < MiniTest::Unit::TestCase
  def setup
    @game1 = Game.new('Street Fighter 2', year:1992, system:'SNES')
    @game2 = Game.new('Final Fantasy 3', year:1994, system:'SNES')
    @game3 = Game.new('Super Mario Bros.', year:1992, system:'SNES')
    @games = [@game1, @game2, @game3]
    @library = Library.new(@games);
  end

  def test_can_create_library
    assert @library
  end

  def test_can_read_games_from_library
    assert_equal @games, @library.games
    assert_equal @game1, @library.games.at(0)
    assert_equal @game2, @library.games.at(1)
    assert_equal @game3, @library.games.at(2)
  end

  def test_games_are_included
    assert @library.has_game?(@game1)
    assert @library.has_game?(@game2)
    assert @library.has_game?(@game3)
  end

  def test_non_existing_game
    non_existing_game = Game.new('Grand Turismo', system:'Play Station', year:2000);
    assert !@library.has_game?(non_existing_game)
  end

  def test_can_add_new_game
    new_game = Game.new('Grand Turismo', system:'Play Station', year:2000);
    @library.add_game(new_game)
    assert @library.has_game?(new_game)
  end

  def test_avoid_duplicates
    new_game = Game.new('Grand Turismo', system:'Play Station', year:2000);
    @library.add_game(new_game)
    @library.add_game(new_game)
    assert_equal 4, @library.count
  end

  def test_can_save_games
    saved_games = @library.save_all
    assert_equal @games, saved_games
  end
end
