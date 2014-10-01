require 'minitest/test'
require 'minitest/autorun'
require '../lib/blog/blog_logger'
require '../lib/blog'

class TestBlogLogger < Minitest::Test
  def setup
    @logger = BlogLogger.new
  end 

  def test_can_create_blog_logger
    assert @logger
  end

  def test_can_log_blog
    expected_log_message = 'This is a log message'
    @logger.extend_logging_strategy(Blog, 'last_edited_log')
    
    blog = Blog.new('John Smith', 'Blog Title', 'This is the blog content')
    expected_log_message = 'Post last edited on Sept 22, 2014, 20:00:00 hour PST.' 
    blog.last_edited_log(expected_log_message)
    assert_equal expected_log_message, blog.log
  end
end
