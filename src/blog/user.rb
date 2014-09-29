class User
  def initialize(fullname, avatar)
    @fullname = fullname
    @avatar = avatar
    @blogs = []
  end

  def create_blog(blog)
    @blogs.push(blog)
    @blogs.last
  end

  def to_s
    "Fullname: " + @fullname + ", Avatar: " + @avatar
  end

  attr_reader :fullname, :avatar
end
