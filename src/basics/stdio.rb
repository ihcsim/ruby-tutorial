# A simple exmaple to display and retrieve text to stdio, with simple string-to-integer conversion and arithmetic.
# To run from command line, run $ruby stdio.rb

print("Welcome, please tell us your name:")
name = gets
print("Hello ", name.chomp, ", how are you today?\n")
print("How old are you?")
age = gets
print("When would you like to retire?")
retire_age = gets
diff_years = Integer(retire_age.chomp) - Integer(age.chomp)
print("You have " ,diff_years," years to go.\n")
