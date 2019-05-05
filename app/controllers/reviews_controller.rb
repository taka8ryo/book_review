class ReviewsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @review = current_user.review.build(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      redirect_to new_review_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :author, :review, :image, :description)
  end
end
