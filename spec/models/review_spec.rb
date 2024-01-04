require 'rails_helper'

RSpec.describe Review, type: :model do
 it "should validate header" do 
  reviews = Review.create( body:"the steak was over cooked",
  stars:1) 
  expect(reviews.errors[:header]).to_not be_empty
 end
 it "should validate body" do
  reviews = Review.create( header:"the steak was over cooked",
  stars:1) 
  expect(reviews.errors[:body]).to_not be_empty
 end
 it "should validate stars" do
  reviews = Review.create( header:"the steak was over cooked",
  body:"the steak was over cooked") 
  expect(reviews.errors[:stars]).to_not be_empty
 end
end
