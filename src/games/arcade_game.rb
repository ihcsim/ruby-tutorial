
require './game'

class ArcadeGame < Game
  def initialize(system, options=[])
    super
    @weight = options[:weight]
  end

  def to_s
    super + ", Weight: " +  @weight.to_s
  end

  attr_accessor :weight
end
