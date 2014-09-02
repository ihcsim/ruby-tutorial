module Convert
  class Temperature
    def self.fahrenheit_to_celsius(input)
      raise ArgumentError, "Argument must be numeric\n" unless input.is_a? Numeric
      return (Float((input - 32))/1.8000).round(2)
    end

    def self.calsius_to_fahrenheit(input)
      raise ArgumentError, "Argument must be numeric\n" unless input.is_a? Numeric
      return (Float(input * 1.80000) + 32.00).round(2)
    end
  end
end
