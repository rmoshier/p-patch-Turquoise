class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # if session[:user_id]
    #   @post = Post.new
    # else
    #   redirect_to posts_path
    # end
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :author, :content))
  end

  def update
    @post = Post.find(params[:id])
    if @product.update(params.require(:post).permit(:title, :author, :content))
      redirect_to posts_path, notice: "Product was successfully updated."
    else
      render :edit
    end
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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

end
