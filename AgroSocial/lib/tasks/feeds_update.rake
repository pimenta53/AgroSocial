desc "update feeds"
task :feeds_update => :environment do
	
	#feeds_url = Feed.all
	delay_interval=1.minutes

	feeds = ["http://feeds.dn.pt/DN-Ultimas","http://feeds.jn.pt/JN-ULTIMAS"]
	
	loop do
		#feeds =Feed.all

		feeds.each do |feed|
			FeedEntry.update_from_feed(feed)
		end

		sleep delay_interval		
	end

end