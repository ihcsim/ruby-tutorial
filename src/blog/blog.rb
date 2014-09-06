class Blog
  def initialize(author, title, content)
    @author = author
    @date_posted = Time.now
    @title = title
    @content = content
  end

  attr_accessor :author, :date_posted, :title, :content

  def to_s
    @title + "\n" + @content + "\nBy " + @author + "\n(" + @date_posted.strftime("%m/%d/%Y at%I:%M%p") + ")"
  end
end
