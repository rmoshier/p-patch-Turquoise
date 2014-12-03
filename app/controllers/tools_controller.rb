class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(params.require(:post).permit(:type, :status, :photo_url))
    if @tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update(params.require(:post).permit(:type, :status, :photo_url))
      redirect_to tools_path
    else
      render :edit
    end
  end

  def destroy
  end

end
