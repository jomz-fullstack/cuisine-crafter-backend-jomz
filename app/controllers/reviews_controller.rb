class ReviewsController < ApplicationController

  def create 
    reviews = Review.create(review_params)
    if reviews.valid?
      render json: reviews
    else
      render json: reviews.errors, status: 422
    end
  end

  def update
    reviews = Review.find(params[:id])
    reviews.update(review_params)
    if reviews.valid?
      render json: reviews
    else 
      render json: reviews.errors, status: 422
    end
  end
  
  def destroy 
    reviews = Review.find(params[:id])
    if reviews.destroy
      render json: review
    else
      render json: reviews.errors, status: 422
    end
  end


  private 
  def review_params
    params.require(:reviews).permit(:header, :body, :stars)
  end
end
