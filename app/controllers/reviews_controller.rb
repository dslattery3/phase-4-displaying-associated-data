class ReviewsController < ApplicationController
  belongs_to :dog_house

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews, include: :dog_house
  end

end
