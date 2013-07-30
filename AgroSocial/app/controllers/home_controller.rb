class HomeController < ApplicationController

  def index
    @events = Event.getEventsN 3
    @notices = FeedEntry.getFeedEntry 5
  end

end
