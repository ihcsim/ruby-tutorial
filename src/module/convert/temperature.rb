module Convert
  class Temperature
    def self.fahrenheit_to_celsius(input)
      raise ArgumentError, "Argument must be numeric\n" unless input.is_a? Numeric
      return Float((input - 32))/1.8000
    end
  end
end
