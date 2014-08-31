class Shape
  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  attr_reader :x, :y
  
  def move(new_x, new_y)
    @x_coord = new _x
    @y_coord = new_y
  end 
end
