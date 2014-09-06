# Tests to illustrate conditional assignment.
# To run, execute $ruby conditional_assignment.rb.

require 'minitest/autorun'

class TestConditionalAssignment < MiniTest::Unit::TestCase
  def setup
    @games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  end

  def test_empty_search_key_returns_all
    search = ""
    assert_equal(4, search_count(search))
    assert_equal(4, search_count_refactor(search))
  end

  def search_count(key)
    key = "" unless key
    matched_games = @games.grep(Regexp.new(key))
    matched_games.count
  end

  def search_count_refactor(key)
    key ||= ""
    matched_games = @games.grep(Regexp.new(key))
    matched_games.count
  end
end
