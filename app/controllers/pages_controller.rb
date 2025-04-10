class PagesController < ApplicationController
  def home
  end

  def feed
    @posts = Post.all
  end

  def slugs
  end
end
