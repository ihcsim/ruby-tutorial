class Blog
  STATES = [:draft, :publish, :archive]
  STATES.each do |state|
    define_method state do
      @status = state
    end
  end

  DEFAULT_ANONYMOUS_OWNER = 'anonymous'

  def initialize(author, title, content)
    @author = author
    @date_posted = Time.now
    @title = title
    @content = content    
    @status = STATES[0]
    @owner = DEFAULT_ANONYMOUS_OWNER
  end

  def to_s
    "Author: " + @author + ", Title: " + @title + ", Date Posted: " + @date_posted.strftime('%d/%b/%Y %H:%M:%S') + ", Status: " + @status.to_s
  end

  attr_accessor :author, :date_posted, :title, :content, :status, :owner

  def show_post
    @title + "\n" + @content + "\n\nBy: " + @author + "\n(posted on " + @date_posted.strftime("%m/%d/%Y at %I:%M%p") + ")\n"
  end

  alias_method :print, :show_post
end
