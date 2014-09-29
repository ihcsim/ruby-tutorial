require 'minitest/test'
require 'minitest/autorun'
require './user'

class UserTest < MiniTest::Test

  def setup
    @fullname = 'John Dove'
    @avatar = 'hardR0cker'
    @user = User.new(@fullname, @avatar)
  end

  def test_can_create_user
    assert @user
  end

  def test_can_retrieve_attributes
    assert_equal @fullname, @user.fullname
    assert_equal @avatar, @user.avatar
  end
end
