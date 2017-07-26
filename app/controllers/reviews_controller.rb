class ReviewsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.all
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.save
    binding.pry
    redirect_to product_reviews_path
  end

  private
    def review_params
      params.require(:review).permit(:title, :content, :product_id, :rating)
    end

end
