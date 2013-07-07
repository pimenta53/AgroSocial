class HomeController < ApplicationController

  def index
    @events = Event.getEventsN 3
    @notices = Notice.getNoticesN 10
  end

end
