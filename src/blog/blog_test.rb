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
    @content = 'This is my first post. I\'m  feeling lucky.'
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

  def test_print
    @blog.extend(DatePostedTester)
    timestamp = DateTime.new(2014,7,31)
    @blog.date_posted = timestamp
    expected_output = @title + "\n" + @content + "\n\nBy: " + @author + "\n(posted on " + timestamp.strftime("%m/%d/%Y at %I:%M%p") + ")\n"
    assert_equal expected_output, @blog.print
  end

  def test_blog_is_in_draft_status
    @blog.draft
    assert_equal :draft, @blog.status
  end

  def test_blog_is_in_published_status
    @blog.publish
    assert_equal :publish, @blog.status
  end

  def test_blog_is_in_archive_status
    @blog.archive
    assert_equal :archive, @blog.status
  end

  def test_blog_is_in_test_status
    Blog.class_eval do
      attr_accessor :id
    end
    test_blog = Blog.new(@author, @title, @content);
    expected_id = 9999
    test_blog.id = 9999
    assert_equal expected_id, test_blog.id
  end
end
