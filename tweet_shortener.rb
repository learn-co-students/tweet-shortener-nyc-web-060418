# Write your code here.
require 'pry'

def dictionary
  {
    "hello" => "hi",
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

def word_substituter(tweet)
  array = tweet.split(" ")

  array.each_with_index do |item, index|
    dictionary.each_key do |key|
      array[index] = dictionary[key] if item.downcase == key.downcase
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each_with_index do |item, index|
    puts word_substituter(array[index])
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  string = selective_tweet_shortener(tweet)
  if string.length > 140
    string[0...137] + "..."
  else
    string
  end
end
