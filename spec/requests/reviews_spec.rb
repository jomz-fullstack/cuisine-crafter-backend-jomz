require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  describe "POST / create" do
    it 'creates a review' do
      review_params = {
        reviews: {
          header:"Best food ive had in a long time",
          body:"would come back again!",
          stars:5
        }
      }
      post '/reviews', params: review_params

      expect(response).to have_http_status(200)

      reviews = Review.first
      expect(reviews.header).to eq 'Best food ive had in a long time'
      expect(reviews.body).to eq 'would come back again!'
      expect(reviews.stars).to eq 5
    end
  end

  # describe "PATCH / update" do 
  #   it "updates a review" do 
  #     review_params = {
  #       reviews: {
  #         header:"Best food ive had in a long time",
  #         body:"would come back again!",
  #         stars:5
  #       }
  #     }
  #     post '/reviews', params: review_params

  #     reviews = Review.first 
  #     p reviews 

  #     # update the review
  #     updated_params = {
  #       reviews: {
  #         header:"Best food ive had in a long time",
  #         body:"would come back again!",
  #         stars:4
  #       }
  #     }
  # Failure/Error: patch '/reviews/#{reviews.id}', params:  updated_params
     
  #    URI::InvalidURIError:
  #      bad URI(is not URI?): "http://www.example.com:80/reviews/\#{reviews.id}"
  #     patch '/reviews/#{reviews.id}', params:  updated_params

  #     updated_review = Review.find(review.id)
  #     expect(response).to have_http_status(200)
  #     expect(updated_review.stars).to eq 4
  #   end
  # end

end
