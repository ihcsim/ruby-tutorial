require "./tweet"

class Zombie
  attr_accessor :name, :brain, :tweets, :weapons

  def initialize(options={})
    @name = 'Ash'
    @brain = 0 
    @tweets = options[:tweets]
  end 

  def hungry?
    true
  end

  def valid?
    false 
  end

  def weapons
    ['Bone Mace', 'Dark Shield']
  end
end
