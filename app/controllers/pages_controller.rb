class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = current_user
    if @user
    @sport_events = SportEvent.all
    end
  end

  def dashboard
    @user = current_user
    @sport_events = @user.sport_events
    @requests = @user.requests
  end

  def profile
    @user = User.find(params[:user_id])
    @sport_events = @user.sport_events

  end
end
