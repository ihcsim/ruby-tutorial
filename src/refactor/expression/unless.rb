# Ensure that games_count and games_count_refactor exhibit the same behaviour.
# To run, execute $ruby unless.rb

require 'minitest/autorun'

class TestUnless < MiniTest::Unit::TestCase
  def setup
    @games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  end

  def test_games_count    
    assert_equal(4, games_count)
    assert_equal(4, games_count_refactor)
    assert_equal(4, games_count_refactor_oneline)
  end

  def games_count
    if !@games.empty?
      @games.count
    end
  end

  def games_count_refactor
    unless @games.empty?
      @games.count
    end
  end

  def games_count_refactor_oneline
    @games.count unless @games.empty?
  end
end
