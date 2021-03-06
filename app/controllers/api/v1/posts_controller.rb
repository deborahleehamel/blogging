class Api::V1::PostsController < ApplicationController

  def index
      @posts = Post.sort_by_title
      render json: @posts
  end

  def count_index
    @posts = Post.sort_by_count
    render json: @posts
  end

end
