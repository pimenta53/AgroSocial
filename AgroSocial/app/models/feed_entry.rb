class FeedEntry < ActiveRecord::Base


	def self.getFeedEntry(n)
		FeedEntry.all(:limit => n, :order => "published_at desc")
	end

	def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end
  
  def self.update_from_feed_continuously(feed_url, delay_interval )
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
    
    loop do
      sleep delay_interval
      updated_feed = Feedzirra::Feed.update(feed)
      if updated_feed!=nil && updated_feed.updated?
      	add_entries(updated_feed.new_entries) 
      end
  	end
    
  end
  
  private
  
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      end
    end
  end

end
