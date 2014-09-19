class Blog
  def initialize(author, title, content)
    @author = author
    @date_posted = Time.now
    @title = title
    @content = content
  end

  attr_accessor :author, :date_posted, :title, :content

  def show_post
    @title + "\n" + @content + "\n\nBy: " + @author + "\n(posted on " + @date_posted.strftime("%m/%d/%Y at %I:%M%p") + ")\n"
  end

  alias_method :print, :show_post
end
