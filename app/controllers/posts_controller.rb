class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    if session[:current_user_id]
      @post = Post.new
    else
      redirect_to posts_path
    end
  end

  def create
    @post = Post.new(params.requre(:post).permit(:title, :author, :content))
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    # in the future, we could add logic so the author is the one who can edit
    if @post.save
      redirect_do posts_path
    else
      render :new
    end
  end

end
