# A simple ruby program that prompts the user to guess the name of the computer in Jeopardy.
# To run, execute $ruby guess-that-computer.rb

print("Welcome to 'Guess That Computer'!\nYou have 3 chance to guess the right answer to the next question.\nAre you ready?");
ready = gets
while ready.chomp.casecmp("yes") != 0
  print("Let us know when you are ready.\nAre you ready?");
  ready = gets
end

print("HERE WE GO!\nWhat is the name of the computer in Jeopardy?\n")
user_answer = gets
real_answer = "Watson"
trial = 1
win = false
while trial < 3 
  if user_answer.chomp.casecmp(real_answer) == 0
    win = true
    break
  else
    trial_left = 3 - trial
    print("Unfortunately, there is no the right answer.\nYou have ", trial_left, " trials left.\n")
    trial += 1
    user_answer = gets
  end
end

if win
  print("Congratulation! You got the right answer!\n")
else
  print("We are sorry. Please try again next time.\n")
end
