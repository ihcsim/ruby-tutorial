class Student
  def initialize(name)
    @name = name
    @grades = []
  end

  attr_reader :name, :grades

  def add_grade(grade)
    @grades.push(grade)
  end

  def calculate_average_grade
    total_grades = 0
    @grades.each do |grade|
      total_grades += grade
    end
    return total_grades/@grades.length
  end
end
