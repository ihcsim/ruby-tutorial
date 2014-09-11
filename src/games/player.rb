require './persistable'

class Player
  include Persistable

  def initialize
    @favourites = []
  end

  def diff_favs(player)
    (@favourites - player.favourites).concat(player.favourites - @favourites)
  end

  def same_favs(player)
    @favourites & player.favourites 
  end

  attr_accessor :favourites
end
