# Simple test for blog.rb.
# To run, execute $ruby test.rb

require 'minitest/test'
require 'minitest/autorun'
require 'active_support/all'
require './blog'
require './date_posted_tester'

class BlogTest < Minitest::Test 
  def setup
    @author = 'JB'
    @title = 'First Post'
    @content = 'This is my first post. I\'m feeling lucky.'
    @blog = Blog.new(@author, @title, @content)
  end

  def test_can_create_blog
    assert @blog
  end

  def test_can_read_blog_attr
    assert_equal @author, @blog.author
    assert_equal @title, @blog.title
    assert_equal @content, @blog.content
  end

  def test_date_posted_is_correct
    @blog.extend(DatePostedTester)
    timestamp = DateTime.new(2014,7,31)
    @blog.date_posted = timestamp
    assert_equal timestamp, @blog.date_posted
  end
end
