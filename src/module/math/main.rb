# A simple ruby math module.
# To run, execute $ruby main.rb

require_relative "arithmetic"

operand_1 = 5
operand_2 = 5
print("5+5+5+5+5=" + Math::Arithmetic.add(operand_1, operand_2, 5, 5, 5).to_s + "\n")

operand_1 = 100
operand_2 = 10
print("100-10-10-10-10=" + Math::Arithmetic.subtract(operand_1, operand_2, 10, 10, 10).to_s + "\n")

operand_1 = 8
operand_2 = 8
print("8*8*8*8*8=" + Math::Arithmetic.multiply(operand_1, operand_2, 8, 8, 8).to_s + "\n")

operand_1 = 1024
operand_2 = 4
print("((((1024/4)/4)/4)/4)=" + Math::Arithmetic.quotient(operand_1, operand_2, 4, 4, 4).to_s + "\n")

