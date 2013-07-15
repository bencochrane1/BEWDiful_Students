# ###############################################################################
# #
# # Back-End Web Development - Homework #1
# #
# # Secret Number is a game you will build in two parts.
# # The purpose of the game is to have players guess a secret number from 1-10.
# #
# # Read the instructions below.
# # This exercise will test your knowledge of Variables and Conditionals.
# #
# ###############################################################################
# #
# # We're ready to program! To practice our Ruby skills lets create a secret number game. 
# # In this game players have three tries to guess a secret number between 1 and 10. 
# #
# # Here are some guidelines to building your game:
# #
# #	Intros
# # 	-	Welcome the player to your game. Let them know who created the game. 
# #	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
# #	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
# #		and that they only have 3 tries to do so.
# #
# #	Functionality: 
# #	 -	Hard code the secret number. Make it a random number between 1 and 10.
# #	 - 	Ask the user for their guess.
# #	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
# #	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
# #	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
# #		  "You have X many guesses before the game is over enter a another number"
# #	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
# #
# # Make sure to add helpful comments to your code to document what each section does.
# # 
# # Remember to cast input from the Player into the appropriate data type.
# #
# ###############################################################################


# def get_chomp
# 	gets.chomp
# end


# puts "Welcome to the guessing game!\n Please enter your name:"

# name = get_chomp

# puts "Welcome #{name}"

# # puts "Your goal is to guess the number (between 1 and 10) in 3 guesses. \n\nTo start enter a number between 1 and 10 for your first guess:"

# answer = 7 # The actual answer

# tries = 1 # Number of guess had by the user

# goes_allowed = 3 # Number of guesses allowed

tries.upto(goes_allowed |count|
	if count == 3
		puts "This is "



# # 3.downto(1) do |guess|
# # 	guess = get.chomp
# # 	a = guess.to_i
# # 	if count == 3
# # 		puts "Your goal is to guess the number (between 1 and 10) in 3 guesses. \n\nTo start enter a number between 1 and 10 for your first guess:"
# # 	elsif count == 2
# # 		puts "#{count} bottle of beer on the wall\n#{count} bottle of beer!\nYou take one down and pass it around,\nNo more bottles of beer on the wall :-(\n\n"
# # 	else
# # 		puts "#{count} bottles of beer on the wall\n#{count} bottles of beer!\nYou take one down and pass it around,\n#{count-1} bottles of beer on the wall.\n\n"
# # 	end
# # end


# # def is_number?
# #   self.to_f == self
# # end


# # until (x = gets.chomp) =~ /^[\d]+(\.[\d]+){0,1}$/
# #   print "Only numbers allowed, Password: "
# # end
# # x = x.to_i

# # def integer? 
# #       [/^[-+]?[1-9]([0-9]*)?$/].each do |match_pattern|
# #         return true if self =~ match_pattern
# #       end
# #       return false
# #     end


while tries <= goes_allowed # While loop lets the user continue to guess until they have used up all their guesses allowed
	puts "Enter a number between 1 and 10:"
	guess = get_chomp # Asks the user for an input for there guesses
	
	# until (guess = gets.chomp) =~ /^[\d]+(\.[\d]+){0,1}$/
	# 	puts "Please enter a number between 1 and 10"
	# end


	a = guess # Ensures that any number entered is changed into an integer


	if goes_allowed > tries # This if stops the guessing game if the user has used up all of there guesses. We add 1 to goes allowed as it breaks too early if I don't
		
		if a.to_i > 0 && (1..10).member?(a)

			if a < answer # Response if the user guessed too low
				puts "Guess #{tries} is too low. Have another go. Number of guesses left: #{goes_allowed - tries}"
			elsif a > answer # Response if the user guessed too high
				puts "Guess #{tries} is too high. Have another go. Number of guesses left: #{goes_allowed - tries}"
			else a == answer # Response if the user guessed right
				puts "Great work you guessed the right number on guess number #{tries}!"
				break
			end
		tries += 1 # Adds another guess by the user each time to let us know how many guesses they have had	
		else
			puts "Please enter a number"
		end
	
	elsif tries >= goes_allowed
	puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
		break
	end
end






# # while tries <= goes_allowed # While loop lets the user continue to guess until they have used up all their guesses allowed
# # 	puts "Enter a number between 1 and 10:"
# # 	guess = get_chomp # Asks the user for an input for there guesses
# # 	a = guess.to_i # Ensures that any number entered is changed into an integer
	
# # 	if goes_allowed > tries # This if stops the guessing game if the user has used up all of there guesses. We add 1 to goes allowed as it breaks too early if I don't
		
# # 		if a < answer # Response if the user guessed too low
# # 			puts "Guess #{tries} is too low. Have another go. Number of guesses left: #{goes_allowed - tries}"
# # 		elsif a > answer # Response if the user guessed too high
# # 			puts "Guess #{tries} is too high. Have another go. Number of guesses left: #{goes_allowed - tries}"
# # 		else a == answer # Response if the user guessed right
# # 			puts "Great work you guessed the right number on guess number #{tries}!"
# # 			break
# # 		end
# # 	tries += 1 # Adds another guess by the user each time to let us know how many guesses they have had	
# # 	elsif tries >= goes_allowed
# # 	puts "Sorry you have used up all of your tries. \n The correct number was #{answer}"
# # 		break
# # 	end
# # end



# answer = 7 # The actual answer

# tries = 1 # Number of guess had by the user

# goes_allowed = 3 # Number of guesses allowed


# print "Try to guess the secret number between 1 and 10: "

# diff = { false => "bigger", true => "smaller" }

# 1.upto(3) do |count|
#    guess = gets.to_i
#    break if guess == answer
#    puts "The guess is #{diff[guess > answer]} than #{guess}!"
#    print "Try again: "
#    count += 1
# end



# number = 7
# guesses_allowed = 3
# tries = 0

# puts "I'm thinking of a number from 1 to 10"
# puts "Can you guess it?"

# while tries < guesses_allowed

# 	loop do
# 	  print "What is your guess? "
# 	  guess = gets.chomp.to_i

# 	  unless guess == number
# 	    message = if guess > number && guess != 0
# 	                "Too high"
# 	              else
# 	                "Too low"
# 	              end
# 	    puts message
# 	  tries += 1 
# 	  else
# 	    puts "You got it!"
# 	    puts "It took you #{tries} guesses."
# 	    exit
# 	  end
# 	end 
# end

# puts "Sorry you have used up of your goes. The answer was #{number}."

