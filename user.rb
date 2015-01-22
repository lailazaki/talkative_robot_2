class User < Person

	def initialize(args)
		super
		@milestone = 75
	end

	def gender_formal_greeting(user)
	  if male?(user) 
	    return "Sir"
	  else
	    return "Ma'am"
	  end
	end

	def greeting(user)
	  puts "Hello, #{gender_formal_greeting(user)}. You are #{@age} years old."
	end

	def print_age_based_message(user)
	  if @age > @milestone
	    puts "You turned 75 #{@age - @milestone} years ago!"
	  elsif @age < @milestone
	    puts "You will turn 75 in #{@milestone - @age} years!"
	  else
	    puts "Congrats on being #{@milestone}!"
	  end
	end

	def child_greeting(user)
	  male?(user) ? "boy" : "girl"
	end

	def parent_greeting(user)
	  male?(user) ? "father" : "mother"
	end

	def print_parent_or_child_message(user)
		if old?(user)
			puts "I hope you are a great-grand#{parent_greeting(user)}."
		elsif young?(user) 
			puts "You are a lovely little #{child_greeting(user)}?"   
		end
	end

end #End of class User


	




class Author < Person

	def initialize(args={}) 
		super(args)
		@name = "Gerry Pass" 
		@age = 28
		@gender = "M"
	end

end #End of class Author















