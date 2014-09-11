
require 'minitest/autorun'
require 'active_support/all'
require './game'
require './library'

class TestLibrary < MiniTest::Unit::TestCase
  def setup
    @game1 = Game.new('Street Fighter 2', year:1992, system:'SNES')
    @game2 = Game.new('Final Fantasy 3', year:1994, system:'SNES')
    @game3 = Game.new('Super Mario Bros.', year:1992, system:'SNES')
    @game4 = Game.new('Double Dragon 3', year:1997, system:'Sega')
    @game5 = Game.new('American Ninja', year:1999, system:'Sega')
    @games = [@game1, @game2, @game3, @game4, @game5]
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
    assert_equal 6, @library.count
  end

  def test_can_save_games
    saved_games = @library.save_all
    assert_equal @games, saved_games
  end

  def test_can_delete_all_games
    assert @library.delete_all
    assert @library.is_empty?
  end

  def test_list_all_games
    assert_equal @games.map(&:name),@library.list_games_names
  end

  def test_filter_games_by_system
    sega_games = @library.list_games_names_by_system('Sega')
    assert_equal @game4.name, sega_games[0]
    assert_equal @game5.name, sega_games[1]

    snes_games = @library.list_games_names_by_system('SNES')
    assert_equal @game1.name, snes_games[0]
    assert_equal @game2.name, snes_games[1]
    assert_equal @game3.name, snes_games[2]
  end
end
