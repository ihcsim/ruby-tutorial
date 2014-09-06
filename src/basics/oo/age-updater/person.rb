class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def birthday
    @age += 1
  end

  attr_reader :name, :age, :gender

  def to_s
    return "Name: " + @name + "\n" + "Age: " + @age.to_s + "\n" + "Gender: " + @gender + "\n"
  end
end
