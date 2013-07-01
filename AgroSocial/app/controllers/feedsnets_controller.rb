class FeedsnetsController < ApplicationController
  # GET /feedsnets
  # GET /feedsnets.json
  def index
    @feedsnets = Feedsnet.getfeed

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedsnets }
    end
  end

  # GET /feedsnets/1
  # GET /feedsnets/1.json
  def show
    @feedsnet = Feedsnet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feedsnet }
    end
  end

  # GET /feedsnets/new
  # GET /feedsnets/new.json
  def new
    @feedsnet = Feedsnet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feedsnet }
    end
  end

  # GET /feedsnets/1/edit
  def edit
    @feedsnet = Feedsnet.find(params[:id])
  end

  # POST /feedsnets
  # POST /feedsnets.json
  def create
    @feedsnet = Feedsnet.new(params[:feedsnet])

    respond_to do |format|
      if @feedsnet.save
        format.html { redirect_to @feedsnet, notice: 'Feedsnet was successfully created.' }
        format.json { render json: @feedsnet, status: :created, location: @feedsnet }
      else
        format.html { render action: "new" }
        format.json { render json: @feedsnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feedsnets/1
  # PUT /feedsnets/1.json
  def update
    @feedsnet = Feedsnet.find(params[:id])

    respond_to do |format|
      if @feedsnet.update_attributes(params[:feedsnet])
        format.html { redirect_to @feedsnet, notice: 'Feedsnet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feedsnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedsnets/1
  # DELETE /feedsnets/1.json
  def destroy
    @feedsnet = Feedsnet.find(params[:id])
    @feedsnet.destroy

    respond_to do |format|
      format.html { redirect_to feedsnets_url }
      format.json { head :no_content }
    end
  end
end
