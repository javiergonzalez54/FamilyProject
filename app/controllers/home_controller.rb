class HomeController < ApplicationController
  # before_filter :authorize, only: [:edit, :pdate]
  def index
  end

  def headphones
    @posts = Post.all
  end
end
