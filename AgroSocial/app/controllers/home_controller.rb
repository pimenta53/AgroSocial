class HomeController < ApplicationController

  def index
    @events = Event.getEventsN 3
    @notices = FeedEntry.getFeedEntry 10
  end

end
