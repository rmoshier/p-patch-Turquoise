class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

end
