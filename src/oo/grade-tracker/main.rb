# A simple ruby program to trach students' grade.
# To run, execute $ruby main.rb

require_relative "student.rb"

jane = Student.new("Jane")
jane.add_grade(80)
jane.add_grade(90)
jane.add_grade(86)
jane.add_grade(80)
print "Jane's grades are " + jane.grades.join(", ") + "\n"
print "Jane's average grade is " + jane.calculate_average_grade.to_s + "\n"
