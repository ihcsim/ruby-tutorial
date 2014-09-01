class Shape
  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  attr_reader :x_coord, :y_coord
  
  def move(new_x, new_y)
    @x_coord = new_x
    @y_coord = new_y
  end

  def to_s
    return "x-y coordinates:(" + @x_coord.to_s + "," + @y_coord.to_s + ")"
  end
end
