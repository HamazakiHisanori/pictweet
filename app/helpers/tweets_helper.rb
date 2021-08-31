module TweetsHelper
  def tweet_lists
    html = ''
    @tweets.each do |tweet|
      html += render(partial: 'tweet',locals: { tweet: tweet })  
    end
    return raw(html)
  end
end