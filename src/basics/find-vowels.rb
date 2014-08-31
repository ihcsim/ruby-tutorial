# A simplue ruby program to find the number of vowels in a word.
# To run, execute $ruby find-vowels.rb

def find_vowels(word)
  word_trimmed = word.chomp
  characters = word_trimmed.chars
  num_vowels = 0
  characters.each do |character|
    if character.casecmp("a") == 0  || character.casecmp("e") == 0 || character.casecmp("i") == 0 || character.casecmp("o") == 0 || character.casecmp("u") == 0      
      num_vowels += 1
    end
  end
  return num_vowels
end

word = gets
num_vowels = find_vowels(word)
print("Number of vowels in " + word.chomp + ": " + num_vowels.to_s + "\n")
