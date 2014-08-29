# A simple ruby program to display food menu.
# To run, execute $ruby food-menu.rb

print "Welcome To Daddy's Favourite Bistro!\n"
today_specials = ['Big Fat Burger','Go Green Salad', 'Mac & Cheese', 'Teriyaki Stir Fry', 'Thai Chicken Salad']
ready = "no"

until ready.chomp.casecmp("yes") == 0
  print "Here are today's specials\n"
  item_num = 1
  today_specials.each do |lunch_special|
    print item_num, ". ", lunch_special, "\n"
    item_num += 1
  end

  print "Are you ready to order?\n"
  ready = gets
end

print "What will you like to have?\n"
selection_id = -1
selection = gets
case selection.chomp
  when "burger"
    selection_id = 0
  when "green salad"
    selection_id = 1
  when "mac n' cheese"
    selection_id = 2
  when "teriyaki stir fry"
    selection_id = 3
  when "thai chicken salad"
    selection_id = 4
  else
    print "Sorry, we don't have any of that today."
end

if selection_id != 1
  print "You have ordered a ", today_specials[selection_id], "\n"
  print "It will be just a few minutes. Thank you.\n"
end
