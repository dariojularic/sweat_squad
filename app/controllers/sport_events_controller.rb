class SportEventsController < ApplicationController

  def index
    @sport_events = SportEvent.all
  end

  def show
    @sport_event = SportEvent.find(params[:id])
    # @review = Review.new --> review is for user, needs to check acceptance

  end

  def new
    @sport_event = SportEvent.new
  end

  def create
    @sport_event = SportEvent.new(sport_event_params)
  end

  def edit
    @sport_event = SportEvent.find(params[:id])
    
  end

  private

  def sport_event_params
    params.require(:sport_event).permit(:address, :start_at, :sport, :description)
  end


end
