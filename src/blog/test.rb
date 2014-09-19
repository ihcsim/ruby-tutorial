# Simple test for blog.rb.
# To run, execute $ruby test.rb

require 'minitest/test'
require 'minitest/autorun'
require './blog'

class BlogTest < Minitest::Test 
  def setup
    @author = 'JB'
    @title = 'First Post'
    @content = 'This is my first post. I\'m feeling lucky.'
    @first_blog = Blog.new(@author, @title, @content)
  end

  def test_can_create_blog
      assert @first_blog
  end
end
