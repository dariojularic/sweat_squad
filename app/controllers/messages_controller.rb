class MessagesController < ApplicationController
  def create
    @sport_event = SportEvent.find(params[:sport_event_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.sport_event = @sport_event
    if @message.save
      # SportEventChannel.broadcast_to(
      #   @sport_event,
      #   render_to_string(partial: "message", locals: { message: @message })
      # )
      SportEventChannel.broadcast_to(
        @sport_event,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "sport_events/chat", status: :unprocessable_entity
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end
end
