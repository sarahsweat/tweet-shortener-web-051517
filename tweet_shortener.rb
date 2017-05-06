# Write your code here.
def dictionary
               {  "hello"         => 'hi',
                  "to"            =>  '2',
                  "two"           =>  '2',
                  "too"           =>  '2',
                  "for"           =>  '4',
                  "For"           =>  '4',
                  "four"          =>  '4',
                  "be"            =>  'b',
                  "you"           =>  'u',
                  "at"            =>  "@",
                  "and"           =>  "&"
                }
end

def word_substituter(long_tweet)
    long_tweet_array = long_tweet.split(" ")
    tweet_keys = dictionary.keys
    i = 0
    c = 0
    long_tweet_array.each do |lta|
      tweet_keys.each do |tk|
        if lta == tk
          long_tweet_array[i] = dictionary[tk]
        end
        c += 1
      end
      i += 1
    end
    long_tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |single_tweet|
    puts word_substituter(single_tweet)
  end
end

def selective_tweet_shortener(long_tweet)

    if long_tweet.length > 140
      shortened_tweet = word_substituter(long_tweet)
    else
      shortened_tweet = long_tweet
    end
  shortened_tweet
end

def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.length > 140
    truncated_tweet = shortened_tweet[0..136] + "..."
    truncated_tweet
  else
    shortened_tweet
  end
end
