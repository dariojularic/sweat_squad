class SportEventChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    sport_event = SportEvent.find(params[:id])
    stream_for sport_event
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
