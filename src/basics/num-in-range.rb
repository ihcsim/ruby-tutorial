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

in_range = []
out_range = []
for i in 0..9
  if limit.include?(numbers[i])
    in_range.push(numbers[i])
  else
    out_range.push(numbers[i])
  end
end

print("In-range: ", in_range,"\n")
print("Out-of-range: ", out_range,"\n")
