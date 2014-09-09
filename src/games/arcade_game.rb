
require './game'

class ArcadeGame < Game
  def initialize(system, options=[])
    super
    @weight = options[:weight]
  end

  attr_accessor :weight
end
