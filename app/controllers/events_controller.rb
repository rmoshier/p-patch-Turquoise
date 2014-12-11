class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:Event).permit(:title, :description, :date))
  end

  def update
    @event = Event.find(params[:id])
    if @product.update(params.require(:event).permit(:title, :description, :date))
    else
      render :edit
    end
  end
end
