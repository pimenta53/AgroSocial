desc "update feeds"
task :feeds_update => :environment do
	
	
	FeedEntry.update_from_feed_continuously("http://feeds.jn.pt/JN-ULTIMAS", 1.minutes)

end