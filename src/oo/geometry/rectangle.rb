require_relative "shape.rb"

class Rectangle < Shape
  def initialize(x_coord, y_coord, width, height)
    super(x_coord, y_coord)
    @width = width
    @height = height
  end

  def to_s
    return super + "\nWidth:" + @width.to_s + " units, Height:" + @height.to_s + " units"
  end
end
