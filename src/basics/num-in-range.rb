# A simple ruby program to determine if some randomly generated numbers are in range.
# To run, execute $ruby num-in-range.rb

numbers = []
index = 0
while index < 10
  numbers[index] = Random.rand(1000)
  index += 1
end

print("New list: ",numbers, "\n")

limit = 1..300
print("Acceptable range is: ", limit, "\n")
print("Range max: ", limit.max, "\n")
print("Range min: ", limit.min, "\n")

index = 0
in_range = []
out_range = []
for index in numbers
  if 5.between?(1,30)
    print("Success")
  else
    print("Failure")
  end
end
print("\n")
