class FeedNewsController < ApplicationController
  # GET /feed_news
  # GET /feed_news.json
  def index
    @feed_news = FeedNew.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feed_news }
    end
  end

  # GET /feed_news/1
  # GET /feed_news/1.json
  def show
    @feed_news = FeedNew.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed_news }
    end
  end

  # GET /feed_news/new
  # GET /feed_news/new.json
  def new
    @feed_news = FeedNew.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feed_news }
    end
  end

  # GET /feed_news/1/edit
  def edit
    @feed_news = FeedNew.find(params[:id])
  end

  # POST /feed_news
  # POST /feed_news.json
  def create
    @feed_news = FeedNew.new(params[:feed_news])

    respond_to do |format|
      if @feed_news.save
        format.html { redirect_to @feed_news, notice: 'Feed new was successfully created.' }
        format.json { render json: @feed_news, status: :created, location: @feed_news }
      else
        format.html { render action: "new" }
        format.json { render json: @feed_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feed_news/1
  # PUT /feed_news/1.json
  def update
    @feed_news = FeedNew.find(params[:id])

    respond_to do |format|
      if @feed_news.update_attributes(params[:feed_news])
        format.html { redirect_to @feed_news, notice: 'Feed new was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_news/1
  # DELETE /feed_news/1.json
  def destroy
    @feed_news = FeedNew.find(params[:id])
    @feed_news.destroy

    respond_to do |format|
      format.html { redirect_to feed_news_url }
      format.json { head :no_content }
    end
  end
end
