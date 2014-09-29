require 'minitest/test'
require 'minitest/autorun'
require './user'

class UserTest < MiniTest::Test

  def setup
    @username = 'John Dove'
    @avatar = 'hardR0cker'
    @user = User.new(@username, @avatar)
  end

  def test_can_create_user
    assert @user
  end

  def test_can_retrieve_attributes
    assert_equal @username, @user.username
    assert_equal @avatar, @user.avatar
  end
end
