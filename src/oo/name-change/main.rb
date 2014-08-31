# A simple ruby program to change John's name,
# To run, execute $ruby main.rb

require_relative 'name.rb'

first_name = "John"
middle_name = "William"
last_name = "Smith"
new_name = Name.new(first_name, middle_name, last_name)
print "John's full name is " + new_name.to_s + "\n"
print "John's first name is " + new_name.first_name + "\n"
print "John's middle name is " + new_name.middle_name + "\n"
print "John's last name is " + new_name.last_name + "\n"

print "Let's change John's name.... \n"
new_name.first_name = "Michael"
new_name.middle_name = "Anthony"
new_name.last_name = "Jacobson"
print "We now have Mr. " + new_name.to_s + "\n"
