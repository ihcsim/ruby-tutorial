class Name
  def initialize(first_name, middle_name, last_name)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  attr_reader :first_name, :middle_name, :last_name
  attr_writer :first_name, :middle_name, :last_name

  def to_s
    return @last_name + ", " + @first_name + " " + @middle_name
  end
end
