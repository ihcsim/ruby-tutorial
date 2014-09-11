class Emulator
  def initialize(game)
    @game = game
    @game_started = false
    @screenshots = []
  end

  def play
    @game_started = true unless not @game 
  end

  def exit
    @game_started = false
  end

  def screenshot
    @screenshots.push('')
  end

  def screenshots_count
    @screenshots.count
  end

  attr_reader :game_started
end
