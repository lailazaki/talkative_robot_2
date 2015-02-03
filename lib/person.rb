class Person

	attr_accessor :name, :age, :gender 
	
	def initialize(args)
		@name   = args[:name]   || "Anonymous"
		@age    = args[:age]    || 30
		@gender = args[:gender] || "M"
 	end
	
	def self.get_user_name
	  print "Please type your name: "
	  gets.chomp.capitalize
	end

	def male?(user)
	  @gender == "M"
	end

	def self.get_user_gender
	  print "Are you M or F? "
	  gets.chomp.chars.first.capitalize
	end

 	def old?(user) 
 		age >= 70
 	end

 	def young?(user)
 		age <= 10
 	end

	def self.get_user_age
	  print "Please enter your age: "
	  gets.chomp.to_i
	end

end #End class Person

