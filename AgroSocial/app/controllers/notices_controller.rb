class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  # GET /notices
  # GET /notices.json
  def index
    @notices = Notice.all
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
    @event = Event.find(params[:event_id])
  end

  # GET /notices/1/edit
  def edit
    #Authorizations
    event = Event.find(:event_id)
    authorize! [:edit], event
  end

  # POST /notices
  # POST /notices.json
  def create
    event = Event.find(params[:event_id])
    authorize! [:edit], event

    @notice = Notice.new(notice_params)
    @notice.event_id = params[:event_id]

    respond_to do |format|
      if @notice.save
        format.html { redirect_to @notice, notice: 'Notice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notice }
      else
        format.html { render action: 'new' }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notices/1
  # PATCH/PUT /notices/1.json
  def update
    #Authorizations
    event = Event.find(params[:event_id])
    authorize! [:edit], event
    
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    #Authorizations
    event = Event.find(Notice.find(params[:id]).event_id)
    authorize! [:edit], event


    @notice.destroy
    respond_to do |format|
      format.html { redirect_to notices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:title, :date_time, :content, :author)
    end
end
