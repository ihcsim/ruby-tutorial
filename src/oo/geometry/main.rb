# A simple ruby program to demostrate geometry.
# To run, execute $ruby main.rb

require_relative "rectangle.rb"

x_coord = 0
y_coord = 0
width = 10
height = 10
new_rectangle = Rectangle.new(x_coord, y_coord, width, height)
print "New rectangle properties:\n" + new_rectangle.to_s + "\n"

new_x = 10
new_y = 20
new_rectangle.move(new_x, new_y)
print "Changing coordinates...\n"
print "New coordinates:(" + new_rectangle.x_coord.to_s + "," + new_rectangle.y_coord.to_s + ")\n"
