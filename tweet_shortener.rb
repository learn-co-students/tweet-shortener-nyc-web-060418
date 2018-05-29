# Write your code here.
def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dict 
end

def word_substituter(tweet)
  strings = tweet.split(" ")
  count = 0 
  strings.each do |word|
    if dictionary.keys.include?(word.downcase)
      strings[count] = dictionary[word.downcase]
    end
    count += 1
  end
  result = strings.join(" ")
  result
end 

def bulk_tweet_shortener(tweet) 
  tweet.each do |i|
    puts "#{word_substituter(i)}"
  end 
end 

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  return tweet unless tweet.length == 140
end 

def shortened_tweet_truncator(tweet) 
  result = word_substituter(tweet)
  return result[0..136] + "..." if result.length > 140
  return result unless result.length == 140 
end 
