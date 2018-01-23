class ReviewController < ApplicationController
  layout 'review_site'

  def new
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def create
    # Review.create(review_params)
    redirect_to controller: :products, action: :index
  end

  private
  def review_params
    params.require(:review).permit(:nickname, :product_id, :rate, :review)
  end
end
