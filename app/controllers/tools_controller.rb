class ToolsController < ApplicationController
  def index
    @tools = Tool.all
    @userstools = Userstool.all
    @user = User.find(session[current_user_id])

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
    @tool.in_stock -= 1
    @tool.save
    @userstool = Userstool.new
    @userstool.user_id = session[:current_user_id]
    @userstool.tool_id = params[:id]
    redirect_to tools_path
  end

  def return_tool
    @userstool = Userstool.find_by(user_id: session[:current_user_id], tool_id: params[:id])
    @tool = find(params[:id])
    @userstool.destroy
    @tool.in_stock += 1
    @tool.save
    redirect_to tools_path
  end

end
