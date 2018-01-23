class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order('id DESC')
  end

  def new
  end

  def create
    Tweet.create(tweet_param)
    redirect_to :root
  end

  private

  def tweet_param
    params.permit(:text)
  end
end
