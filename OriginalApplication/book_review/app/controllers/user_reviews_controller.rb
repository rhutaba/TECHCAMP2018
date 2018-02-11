class UserReviewsController < ApplicationController
  def show
    @user_review = UserReview.find(params[:id])
  end
end
