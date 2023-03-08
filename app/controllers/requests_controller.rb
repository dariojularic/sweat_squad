class RequestsController < ApplicationController
  def create
    @request = Request.new
    @request.user = current_user
    @request.sport_event = SportEvent.find(params[:id])
    @request.save
    @message = Message.new
  end
end
