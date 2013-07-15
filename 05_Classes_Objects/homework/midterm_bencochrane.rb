# Twitter Hashtag: Top 3 Tweets for A Searched Hashtag

require "twitter"




Twitter.configure do |config|
  config.consumer_key = "2j6dw0wuuWuCC3spPpGLw"
  config.consumer_secret = "1ACMWE8xwrqI1tgRL8IPhqaVwrWZWbbbFGCWFT924g"
  config.oauth_token = "1582731476-NMUII4pgwlmUi1nt1Hwk0fWmgePdDecayatbhm8"
  config.oauth_token_secret = "TfDlZxHmvvZFkPqnlOGg2bGfSy2zKAS7Q2sRWes"
end

# Structure:

# gets
# store in variable
# use the variable as the hashtag
# use this hashtag to search twitter api


# 1. ask the user for a search term which is the variable
# 2. validate on this search term to remove any spaces for a hashtag
# 3. The search term is then placed into 


def hash_grab
	gets.chomp
end


puts "Please enter the hashtag you'd like to search for:"
hashtag = "#"+hash_grab
puts "Let's search for the hashtag #{hashtag}"


# Twitter.search("#{hashtag} -rt", :count => 1).results.first.text
# Twitter.search("#{hashtag} -rt", :count => 1).results.second.text
# Twitter.search("#{hashtag} -rt", :count => 1).results.third.text



puts Twitter.search("#{hashtag} -rt").results[0].text
puts Twitter.search("#{hashtag} -rt").results[1].text
puts Twitter.search("#{hashtag} -rt").results[2].text

# puts Twitter.search("#{hashtag} -rt", :count => 1).results.first.text
# puts Twitter.search("#{hashtag} -rt", :count => 1).results.second.text
# puts Twitter.search("#{hashtag} -rt", :count => 1).results.third.text


# puts Twitter.search("#{hashtag} -rt").results.first.text
# puts Twitter.search("#{hashtag} -rt").results.second.text