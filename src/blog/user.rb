class User
  def initialize(username, avatar)
    @username = username
    @avatar = avatar
  end

  attr_reader :username, :avatar
end
