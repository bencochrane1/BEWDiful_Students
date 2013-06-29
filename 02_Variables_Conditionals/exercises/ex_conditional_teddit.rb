# Use your completed version from Teddit strings. 
# Or Copy the code from the strings_exercise_SN_solution.rb
#
# New Teddit Feature! If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

upvotes = 0



def get_chomp
	gets.chomp
end



puts "Welcome to Teddit.\nPlease enter a news story:"

news = get_chomp

puts "User enters: #{news}"

puts "Please give it a category:"

category = get_chomp

puts "User enters: #{category}"

if category == "cats"
	upvotes += upvotes * 5
end

if category == "bacon"
	upvotes * 8
end

if category == "Food"
	upvotes * 3
end



puts "New story added! #{news}, Category: #{category}, Current Upvotes: #{upvotes}"

