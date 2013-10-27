class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def show
    @tweets = Tweet.all.order('created_at DESC')
  end
end
