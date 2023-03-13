class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = current_user
    if @user
      @sport_events = SportEvent.all
      # raise
      @markers = @sport_events.geocoded.map do |sport_event|
        {
          lat: sport_event.latitude,
          lng: sport_event.longitude,
          info_window_html: render_to_string(partial: "shared/info_window", locals: { sport_event: sport_event}),
          marker_html: render_to_string(partial: "shared/marker")
        }
      end
    end
  end

  def dashboard
    @about_me = User.new
    @user = current_user
    @sport_events = @user.sport_events
    @requests = @user.requests
  end

  def profile
    @user = User.find(params[:user_id])
    @sport_events = @user.sport_events
  end

  # private

  # def user_params
  #   params.require(:user).permit(:about_me)
  # end
end
