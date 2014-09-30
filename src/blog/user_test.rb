require 'minitest/test'
require 'minitest/autorun'
require './user'
require './blog'

class UserTest < MiniTest::Test

  def setup
    @fullname = 'John Dove'
    @avatar = 'hardR0cker'
    @user = User.new(@fullname, @avatar)

    @author = 'JD'
    @title = 'First Post'
    @content = 'This is my first post. I\'m  feeling lucky.'
    @blog = Blog.new(@author, @title, @content)
  end

  def test_can_create_user
    assert @user
  end

  def test_can_retrieve_attributes
    assert_equal @fullname, @user.fullname
    assert_equal @avatar, @user.avatar
  end

  def test_user_can_create_blog
    assert_equal @blog, user_create_blog
    assert_equal @user, @blog.owner
  end

  def test_blog_can_read_owner_info
    user_create_blog
    assert_equal @user.fullname, @blog.owner_fullname
    assert_equal @user.avatar, @blog.owner_avatar
  end

  private
  def user_create_blog
    @user.create_blog(@blog)
  end

end
