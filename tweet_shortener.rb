require "pry"
def dictionary
  word_subs = {
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
    dictionary.keys.each do |i|
      array.map! {|x| x.downcase == i ? dictionary[i] : x}
    end
    array.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
  puts  word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else return tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    return tweet[0..139]
  else return tweet
  end
end
