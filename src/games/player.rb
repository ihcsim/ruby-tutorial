class Player
  def initialize
    @favourites = []
  end

  def diff_fav(player)
    (@favourites - player.favourites).concat(player.favourites - @favourites)
  end

  attr_accessor :favourites
end
