def dictionary
  subs = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "four" => "4", "for" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}

end

def word_substituter(tweet)

  tweet.split(" ").collect do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end.join(" ")
end
#
# tweet_1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#
# word_substituter(tweet_1)

def bulk_tweet_shortener(tweet)
  tweet.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def truncate(string, max)
  string.length > max ? "#{string[0...max]}..." : string
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    if tweet.length > 140
      truncate(tweet, 137)
    else
      tweet
    end
  else
    tweet
  end
end
