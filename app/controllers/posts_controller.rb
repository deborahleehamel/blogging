class PostsController < ApplicationController

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    post = Post.find(params[:id])
    post.publish
  end

  def edit
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :author, :tag_list)
    end

end
