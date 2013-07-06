class HomeController < ApplicationController

  def index
    @events = Event.all
    @notices = Notice.all
  end

end
