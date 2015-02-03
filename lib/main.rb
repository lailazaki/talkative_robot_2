require "./person"
require "./groceries" 
require "./user"


#--------UNIVERSAL--------

name = User.get_user_name
age = User.get_user_age
gender = User.get_user_gender
current_user = User.new({ name: name, age: age, gender: gender})
  
# -------------USER------------

current_user.greeting(current_user)
current_user.print_age_based_message(current_user)
current_user.print_parent_or_child_message(current_user)


#----------------GROCERY LIST --------------

grocery_list = GroceryList.new("grocery_list.txt", current_user)
grocery_list.grocery_list_random_item
grocery_list.grocery_write_file
grocery_list.to_s
puts "Thank you for using #{grocery_list.owner.name}\'s grocery list!"


#---------------AUTHOR-------------------

author = Author.new
author.name

































