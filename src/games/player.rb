class Player
  def initialize
    @favourites = []
  end

  def diff_fav(player)
    (@favourites - player.favourites).concat(player.favourites - @favourites)
  end

  def same_favs(player)
    @favourites & player.favourites 
  end

  attr_accessor :favourites
end
