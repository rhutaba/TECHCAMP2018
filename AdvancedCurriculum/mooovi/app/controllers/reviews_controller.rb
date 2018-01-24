class ReviewsController < RankingController
  layout 'review_site'

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to controller: :products, action: :index
  end

  private
  def review_params
    params.require(:review).permit(:nickname, :rate, :review).merge(params.permit(:product_id))
  end
end
