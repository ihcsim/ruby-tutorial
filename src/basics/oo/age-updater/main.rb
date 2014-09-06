# A simple program to increment individuals' birthday.
# To run, execute $ruby main.rb

require_relative "person.rb"

first_person = Person.new("Michael", 34, "M")
print first_person.to_s

second_person = Person.new("Linda", 26, "F")
print second_person.to_s

third_person = Person.new("Luke", 28, "M")
print third_person.to_s

print "Let's update everyone's birthday...\n"
first_person.birthday
second_person.birthday
third_person.birthday

print "Michael is now " + first_person.age.to_s + " years old\n"
print "Linda is now " + second_person.age.to_s + " years old\n"
print "Luke is now " + third_person.age.to_s + " years old\n"
