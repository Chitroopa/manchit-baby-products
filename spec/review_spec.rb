require 'rails_helper'

describe(Review) do

  let!(:product) { FactoryGirl.create(:product)}

  it("validates presence of title and rating") do
    test_review = Review.create({:title => "", :content => "" ,:rating => "", :product_id => product.id })
    expect(test_review.save()).to eq(false)
  end

  it("validates if rating is between 1 to 5") do
    test_review = Review.create({:title => "test", :content => "test" ,:rating => 7, :product_id => product.id})
    expect(test_review.save()).to eq(false)
  end
end
