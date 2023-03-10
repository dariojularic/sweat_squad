class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @request.sport_event = SportEvent.find(params[:sport_event_id])
    @request.save
    # raise
    @message = Message.new
  end

  def accept
    @request = Request.find(params[:id])
    if @request.accepted == false
      @request.accepted = true
    else
      @request.accepted = false
    end
    @request.save
    redirect_to dashboard_path(@request.sport_event), status: :see_other
  end

  # NEEDS TO BE FIXED
  # def cancel
  #   @request = Request.find(params[:id])
  #   @request.accepted = false
  #   @request.save
  #   redirect_to dashboard_path, status: :see_other
  # end

  def destroy
    @sport_event = SportEvent.find(params[:sport_event_id])
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to sport_event_requests_path(@sport_event), status: :see_other
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end
end
