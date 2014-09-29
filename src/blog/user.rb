class User
  def initialize(fullname, avatar)
    @fullname = fullname
    @avatar = avatar
  end

  attr_reader :fullname, :avatar
end
