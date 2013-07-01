class Feedsnet < ActiveRecord::Base
  attr_accessible :url


  def self.getfeed
  	Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/PaulDixExplainsNothing")
  end

end
