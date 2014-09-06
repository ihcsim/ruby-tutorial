# Tests to illustrate conditional returns.
# To run, execute $ruby conditional_return.rb

require 'minitest/autorun'

class TestConditionalReturn < MiniTest::Unit::TestCase
  def setup
    @games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  end

  def test_find_existing_game
    search = "Mega Man 2"
    assert game_exists?(search)
    assert game_exists_refactor?(search)
    assert game_exists_refactor_no_local_variable?(search)
  end

  def test_find_non_existing_game
    search = "Final Fantasy 3"
    assert !game_exists?(search)
    assert !game_exists_refactor?(search)
    assert !game_exists_refactor_no_local_variable?(search)
  end

  def game_exists?(key)
    search_index = @games.find_index(key)
    found = false
    if search_index
      found = true
    else
      found = false
    end
  end

  def game_exists_refactor?(key)
    search_index = @games.find_index(key)
    found = if search_index
      true
    else
      false
    end
  end

  def game_exists_refactor_no_local_variable?(key)
    search_index = @games.find_index(key)
    if search_index
      true
    else
      false
    end
  end
end
