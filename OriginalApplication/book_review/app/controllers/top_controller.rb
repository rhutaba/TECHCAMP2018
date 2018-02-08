class TopController < ApplicationController
  def index
    @user_reviews = UserReview.all.limit(6)
  end
end
