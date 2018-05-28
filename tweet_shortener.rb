# Write your code here.
require 'pry'

def dictionary
  hash = {
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
  return hash
end

def word_substituter(str)
  str_array = str.split(" ")
  dic_array = dictionary.keys
  counter = 0
  str_array.each do |word|
    if dic_array.include?(word.downcase)
      str_array[counter] = dictionary[word.downcase]
    end
    counter += 1
  end
  return_str = str_array.join(" ")
  return_str
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts "#{word_substituter(tweet)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  return_str = word_substituter(tweet)
  if word_substituter(tweet).length > 140
    return return_str[0..136] + "..."
  else
    return return_str
  end
end
