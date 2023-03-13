class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @sport_event = SportEvent.find(params[:sport_event_id])
    @request = Request.new(request_params)
    @request.user = current_user
    @request.sport_event = @sport_event
    @message = Message.new
    if @request.save
      redirect_to sport_event_path(@request.sport_event), notice: "Request sent"
    else
      render "sport_events/show", status: :unprocessable_entity
    end
    # raise
  end

  def accept
    @request = Request.find(params[:id])
    if @request.accepted == false
      @request.accepted = true
      @request.save
      redirect_to sport_event_requests_path(@request.sport_event), notice: "You have accepted the request"
    else
      @request.accepted = false
      @request.save
      redirect_to sport_event_requests_path(@request.sport_event), notice: "You have declined the request"
    end
  end

  # NEEDS TO BE FIXED
  # def cancel
  #   @request = Request.find(params[:id])
  #   @request.accepted = false
  #   @request.save
  #   redirect_to dashboard_path, status: :see_other
  # end

  def destroy
    @request = Request.find(params[:id])
    @sport_event = @request.sport_event
    @request.destroy
    redirect_to sport_event_requests_path(@sport_event), status: :see_other, notice: "You have declined the request"
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end
end
