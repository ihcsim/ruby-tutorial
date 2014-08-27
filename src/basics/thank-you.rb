# A simple ruby program to generate a thank-you note.
# To run, execute $ruby thank-you.rb

print("Donor's Name:")
donor_name = gets

print("Donation Amount:")
donation = gets

print("Signed By (Your Name):")
signed_by = gets

facts = [
"842 million people in the world do not have enough to eat.",
"The vast majority of hungry people live in developnig countries.",
"Asia has the largest number of hungry people (over 500 million).",
"If women farmers had the same access to resource as men, the number of hungry in the world could reduced by up to 150 million.",
"Poor nutrition causes nearly half of deaths in children under five."] 

message = <<HEREDOC
Dear #{donor_name.chomp},

Thank you for your gift of $#{Float(donation.chomp)}. Your generosity will go a long way in helping to fight world hunger.

According to WFP (World Food Programme):
1. #{facts[0]}
2. #{facts[1]}
3. #{facts[2]}
4. #{facts[3]}
5. #{facts[4]}

Thank you for joining us in helping to reach the hungry in the world. It is our privilege to share this journey with you.

Yours Truly,
#{signed_by.chomp}
HEREDOC

print(message)
