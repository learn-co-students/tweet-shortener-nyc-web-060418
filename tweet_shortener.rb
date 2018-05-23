# Write your code here.
require 'pry'

def dictionary 
  dictionay_hash = { "hello" => "hi",
                  "to" => "2",
                  "two" => "2",
                  "too" => "2",
                  "for" => "4",
                  "four" => "4",
                  "be" => "b",
                  "you" => "u",
                  "at" => "@",
                  "and" => "&"
  }

end


def word_substituter(original_tweet)
  original_array = original_tweet.split
  
  original_array.collect { |word| 
    word = dictionary[word.downcase] if dictionary.keys.include?(word.downcase)
    word
  }.join(" ")
  
end


def bulk_tweet_shortener(tweets_array)
  tweets_array.each { |tweet|
    puts word_substituter(tweet)
  }
end


def selective_tweet_shortener(original_tweet)
  if original_tweet.length > 140
    word_substituter(original_tweet)
  else
    original_tweet
  end  
end


def shortened_tweet_truncator(short_tweet)
  if short_tweet.length > 140
    short_tweet[0..136] << "..."
  else
    short_tweet
  end
end

