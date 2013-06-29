###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################


def get_chomp
	gets.chomp
end


puts "Welcome to the guessing game!\n Please enter your name:"

name = get_chomp

puts "Welcome #{name}"

puts "Your goal is to guess the number (between 1 and 10) in 3 guesses. \n\nTo start enter a number between 1 and 10 for your first guess:"

answer = 7 # The actual answer

tries = 0 # Number of guess had by the user

goes_allowed = 3 # Number of guesses allowed


# while tries < goes_allowed # While loop lets the user continue to guess until they have used up all their guesses allowed
# 	puts "Enter a number between 1 and 10:"
# 	guess = get_chomp # Asks the user for an input for there guesses
# 	a = guess.to_i # Ensures that any number entered is changed into an integer
# 	tries += 1 # Adds another guess by the user each time to let us know how many guesses they have had

# 	if goes_allowed > tries # This if stops the guessing game if the user has used up all of there guesses. We add 1 to goes allowed as it breaks too early if I don't
		
# 		if a < answer # Response if the user guessed too low
# 			puts "Guess #{tries} is too low. Have another go. Number of guesses left: #{goes_allowed - tries}"
# 		elsif a > answer # Response if the user guessed too high
# 			puts "Guess #{tries} is too high. Have another go. Number of guesses left: #{goes_allowed - tries}"
# 		else a == answer # Response if the user guessed right
# 			puts "Great work you guessed the right number on guess number #{tries}!"
# 			break
# 		end

# 	else
# 	puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
# 		break
# 	end
# end





while tries < goes_allowed # While loop lets the user continue to guess until they have used up all their guesses allowed
	puts "Enter a number between 1 and 10:"
	guess = get_chomp # Asks the user for an input for there guesses
	a = guess.to_i # Ensures that any number entered is changed into an integer
	tries += 1 # Adds another guess by the user each time to let us know how many guesses they have had

	if goes_allowed > tries # This if stops the guessing game if the user has used up all of there guesses. We add 1 to goes allowed as it breaks too early if I don't
		
		if a < answer # Response if the user guessed too low
			puts "Guess #{tries} is too low. Have another go. Number of guesses left: #{goes_allowed - tries}"
		elsif a > answer # Response if the user guessed too high
			puts "Guess #{tries} is too high. Have another go. Number of guesses left: #{goes_allowed - tries}"
		else a == answer # Response if the user guessed right
			puts "Great work you guessed the right number on guess number #{tries}!"
			break
		end

	elsif tries = goes_allowed + 1
	puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
		break
	end
end




# while tries < goes_allowed # While loop lets the user continue to guess until they have used up all their guesses allowed
# 	puts "Enter a number between 1 and 10:"
# 	guess = get_chomp # Asks the user for an input for there guesses
# 	a = guess.to_i # Ensures that any number entered is changed into an integer
# 	tries += 1 # Adds another guess by the user each time to let us know how many guesses they have had


		
# 		if a < answer # Response if the user guessed too low

# 			if goes_allowed >= tries
# 				puts "Guess #{tries} is too low. Have another go. Number of guesses left: #{goes_allowed - tries}"
# 			else
# 				puts puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
# 				break
# 			end

# 		elsif a > answer # Response if the user guessed too high

# 			if goes_allowed >= tries
# 				puts "Guess #{tries} is too high. Have another go. Number of guesses left: #{goes_allowed - tries}"
# 			else
# 				puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
# 				break
# 			end

# 		else a == answer # Response if the user guessed right

# 			if goes_allowed >= tries
# 				puts "Great work you guessed the right number on guess number #{tries}!"
# 			else
# 				puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
# 				break
# 			end

# 		end

# end






