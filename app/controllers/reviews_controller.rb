class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @request = Request.new
    @sport_event = SportEvent.find(params[:sport_event_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.sport_event = @sport_event
    if @review.save
      redirect_to sport_event_path(@sport_event)
    else
      render "sport_events/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
