# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(



# 99.downto(0) do |count|
# 	if count >= 2
# 		puts "#{count} bottles of beer on the wall\n#{count} bottles of beer!\nYou take one down and pass it around,\n#{count-1} bottles of beer on the wall.\n"
# 	elsif count == 0
# 		puts "No more bottles of beer on the wall :-("
# 	else
# 		puts "#{count} bottle of beer on the wall\n#{count} bottle of beer!\nYou take one down and pass it around,\n#{count-1} bottle of beer on the wall.\n"
# 	end
# end


99.downto(1) do |count|
	if count == 2
		puts "#{count} bottles of beer on the wall\n#{count} bottles of beer!\nYou take one down and pass it around,\n#{count-1} bottle of beer on the wall.\n\n"
	elsif count == 1
		puts "#{count} bottle of beer on the wall\n#{count} bottle of beer!\nYou take one down and pass it around,\nNo more bottles of beer on the wall :-(\n\n"
	else
		puts "#{count} bottles of beer on the wall\n#{count} bottles of beer!\nYou take one down and pass it around,\n#{count-1} bottles of beer on the wall.\n\n"
	end
end
