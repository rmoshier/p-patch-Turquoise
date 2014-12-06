class ToolsController < ApplicationController
  def index
    @tools = Tool.all
    @userstools = Userstool.all
    @user = User.find_by(uid: session[:user_id])

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
    @tool = Tool.new(params.require(:post).permit(:name, :quantity, :photo_url))
    @tool.in_stock = @tool.quantity
    if @tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update(params.require(:post).permit(:name, :quantity, :in_stock, :photo_url))
      redirect_to tools_path
    else
      render :edit
    end
  end

  def lost_tool
    @tool = Tool.find(params[:id])
    @tool.quantity -= 1
  end

  def rent_tool
    @tool = Tool.find(params[:id])
    if @tool.in_stock > 0
      @tool.in_stock -= 1
      @tool.save
      @user = User.find_by(uid: session[:user_id])
      @userstool = Userstool.new
      @userstool.user_id = @user.id
      @userstool.tool_id = params[:id]
      @userstool.name = @tool.name
      @userstool.save
      redirect_to tools_path
    else
      redirect_to tools_path
    end
  end

  def return_tool
    @user = User.find_by(uid: session[:user_id])
    @userstool = Userstool.find_by(user_id: @user.id, tool_id: params[:id])
    @tool = Tool.find(params[:id])
    # raise params.inspect
    @userstool.destroy
    @tool.in_stock += 1
    @tool.save
    redirect_to tools_path
  end

end
