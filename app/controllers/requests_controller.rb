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
    @message = Message.new
  end

  def request_params
    params.require(:request).permit(:message)
  end
end
