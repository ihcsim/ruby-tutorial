# Tests to illustrate short-circuit evaluation.
# To run, execute $ short_circuit.rb

require 'minitest/autorun'

class TestShortCircuit < MiniTest::Unit::TestCase
  def setup
    @games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  end

  def test_find_existing_game_index
    search = "Super Mario Bros."
    assert_equal 0, find_game_index(search)
    assert_equal 0, find_game_index_refactor(search)
  end

  def test_find_non_existing_game_index
    search = "Final Fantasy 3"
    assert_equal "Not Found", find_game_index(search)
    assert_equal "Not Found", find_game_index_refactor(search)
  end

  def find_game_index(search)
    search_index = @games.find_index(search)
    if search_index
      search_index
    else
      "Not Found"
    end
  end

  def find_game_index_refactor(search)
    @games.find_index(search) || "Not Found"
  end
end
