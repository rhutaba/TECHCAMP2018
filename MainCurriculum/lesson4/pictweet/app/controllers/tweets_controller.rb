class TweetsController < ApplicationController
  def index
    @tweet = Tweet.last
  end
end
