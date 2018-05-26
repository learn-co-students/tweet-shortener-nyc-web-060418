# Iterating and Manipulating 1 Lab
# Laura Nadolski
# May 26 2018

# This dictionary contains our hash of word-shortening substitutions. Original
# words as keys, and substitutions as values.

def dictionary
  dictionary = {
    :hello => ["hi"],
    :Hello => ["Hi"],
    :to => ["2"],
    :To => ["2"],
    :too => ["2"],
    :Too => ["2"],
    :two => ["2"],
    :Two => ["2"],
    :for => ["4"],
    :For => ["4"],
    :four => ["4"],
    :Four => ["4"],
    :be => ["b"],
    :Be => ["b"],
    :you => ["u"],
    :You => ["u"],
    :at => ["@"],
    :At => ["@"],
    :and => ["&"],
    :And => ["&"]
  }
end

# Takes in a string of a tweet and shortens that string using the substitutes.

def word_substituter(tweet_string)

  dictionary_hash = dictionary
  tweet_to_array = tweet_string.split
  back_to_tweet = ""

  tweet_to_array.each_with_index do |word, index|
    dictionary.each do |full, truncated|
      if full.to_s == word
        tweet_to_array[index] = truncated
      end
    end
  end
  back_to_tweet = tweet_to_array.join(" ")
  return back_to_tweet

end

# Takes in an array of tweets, iterates over them, shortens them, and puts the result.

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

# Only implements substitutions if the tweet is > 140 characters. Otherwise, it
# returns the original tweet.

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

# Truncates the tweet to 140 characters, adding an ellipses if cut off.

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  tweet_w_ellipses = ""
  char_array = []

  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..136] + "..."
  else
    return shortened_tweet
  end
end
