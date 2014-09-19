class Blog
  def initialize(author, title, content)
    @author = author
    @date_posted = Time.now
    @title = title
    @content = content
    @status = :draft
  end

  attr_accessor :author, :date_posted, :title, :content, :status

  def show_post
    @title + "\n" + @content + "\n\nBy: " + @author + "\n(posted on " + @date_posted.strftime("%m/%d/%Y at %I:%M%p") + ")\n"
  end

  def draft
    @status = :draft
  end

  def publish
    @status = :published
  end

  def archive
    @status = :archived
  end

  alias_method :print, :show_post
end
