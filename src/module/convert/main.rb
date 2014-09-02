# A simple ruby program to perform some units and scale conversions.
# To run, execute $ruby main.rb

require_relative "temperature"

temperature_in_fahrenheit = 100
print "100F = " + Convert::Temperature.fahrenheit_to_celsius(temperature_in_fahrenheit).to_s + "C\n"

temperature_in_fahrenheit = 250
print "250F = " + Convert::Temperature.fahrenheit_to_celsius(temperature_in_fahrenheit).to_s + "C\n"

temperature_in_fahrenheit = 0
print "0F = " + Convert::Temperature.fahrenheit_to_celsius(temperature_in_fahrenheit).to_s + "C\n"

def requestForNumericInput
  new_input = nil
  until new_input.is_a?Numeric
    print "Please provide a numeric input: "
    new_input = gets
    new_input = Float(new_input.chomp) rescue nil
  end
  return new_input
end

begin
  temperature_in_fahrenheit = "A string"
  print "Bad input..." + Convert::Temperature.fahrenheit_to_celsius(temperature_in_fahrenheit).to_s + "C\n"
rescue ArgumentError
  new_input = requestForNumericInput()
  print new_input.to_s + "F = " + Convert::Temperature.fahrenheit_to_celsius(new_input).to_s + "C\n"
end
