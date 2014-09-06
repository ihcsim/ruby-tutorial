# Simple test for blog.rb.
# To run, execute $ruby test.rb

require_relative 'blog'

first_blog = Blog.new('JB', 'First Post', 'This is my very first post. I\'m feeling lucky.')
puts first_blog.to_s
