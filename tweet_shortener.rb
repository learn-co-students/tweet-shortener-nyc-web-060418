# Write your code here.

def dictionary
  hash = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split(' ')
  dictionary.keys.each do |k|
    array.each.with_index do |word, idx|
      if word.capitalize == k.capitalize
        array[idx] = dictionary[k]
      end
    end
  end
  array.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  if tweet.length > 140
    short = word_substituter(tweet)
    if short.length > 140
      short[0..136] + "..."
    else
      short
    end
  else
    tweet
  end
end
