class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end
  def show
    reviews = Review.find(params[:id])
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review, status: :created
    else
      render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  
  def update
    review = Review.find(params[:id])
    review.update(review_params)
    if review.valid?
      render json: review
    else 
      render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  
  def destroy 
    review = Review.find(params[:id])
    if review.destroy
      render json: review
    else
      render json: review.errors, status: 422
    end
  end


  private 
  def review_params
    params.require(:review).permit(:header, :body, :stars, :user_id, :recipe_id)
  end
end
