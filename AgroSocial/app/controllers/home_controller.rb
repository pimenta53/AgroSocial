class HomeController < ApplicationController

  def index
    @events = Event.getEventsN 3
    @feedEntries = FeedEntry.getFeedEntry 5
  end

end
