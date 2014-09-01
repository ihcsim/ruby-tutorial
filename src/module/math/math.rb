module Math
  class Arithmetic
    def self.add(operand_1, operand_2, *operands)
      total = Integer(operand_1) + Integer(operand_2)
      operands.each do |operand|
        total += Integer(operand)
      end
      return total
    end

    def self.subtract(operand_1, operand_2, *operands)
      total = Integer(operand_1) - Integer(operand_2)
      operands.each do |operand|
        total -= Integer(operand)
      end
      return total
    end

    def self.multiply(operand_1, operand_2, *operands)
      total = Integer(operand_1) * Integer(operand_2)
      operands.each do |operand|
        total *= Integer(operand)
      end
      return total
    end

    def self.quotient(operand_1, operand_2, *operands)
      total = Integer(operand_1)/Integer(operand_2)
      operands.each do |operand|
        total /= Integer(operand)
      end
      return total
    end
  end
end
