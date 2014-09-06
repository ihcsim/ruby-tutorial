# Tests to show short-hand comparison of nil.
# To run, execute $ruby nil.rb

require 'minitest/autorun'

class TestNil < MiniTest::Unit::TestCase
  def setup
    @games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  end

  def test_search_exist_game
    search = "Contra"
    assert_equal(1, search_index(search))
    assert_equal(1, search_index_refactor(search))
  end

  def test_search_nonexist_game
    search = "Final Fantasy 3"
    assert_equal(-1, search_index(search))
    assert_equal(-1, search_index_refactor(search))
  end

  def search_index(key)
    search_index = @games.find_index(key)
    if search_index != nil
      return search_index
    else
      return -1
    end
  end
 
  def search_index_refactor(key)
    search_index = @games.find_index(key)
    if search_index
      return search_index
    else
      return -1
    end
  end
end
