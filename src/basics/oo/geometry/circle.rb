
require_relative "shape.rb"

class Circle < Shape
  def initialize(x_coord, y_coord, radius)
    super(x_coord,y_coord)
    @radius = radius
  end

  def to_s
    return super + ", radius: " + @radius.to_s
  end
end
