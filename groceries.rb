class GroceryList

	attr_accessor :owner, :grocery_list

	def initialize(file_name, owner)
		@file_name = file_name
		@owner = owner
		@grocery_list = IO.read(@file_name).split("\n")
	end

	def grocery_list_random_item
		random_item = @grocery_list.sample
		print "Hey #{@owner.name}, did you remember to grab the #{random_item}? "
		picked_up_random_item = gets.chomp.chars.first.capitalize
		if picked_up_random_item == "Y"
			puts "Thank you for remembering!"
		else
			puts "Can you go back and get the #{random_item}? Thanks!"
		end
	end 

	def grocery_write_file
		@grocery_list << "bread"
		new_grocery_list = @grocery_list.join("\n")
		IO.write("new_grocery_list.txt" , new_grocery_list)
	end

	def to_s
		grocery_list.map.with_index { |item, i| "#{i + 1} -- #{item}" }
		grocery_list.join("\n")
	end

end #End of Grocery List











