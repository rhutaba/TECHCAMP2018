class UserReviewController < ApplicationController
  def show
    @user_review = UserReview.find(params[:id])
  end
end
