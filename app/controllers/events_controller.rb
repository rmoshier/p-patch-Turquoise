class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :location, :description, :date))
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(params.require(:event).permit(:title, :location, :description, :date))
    else
      render :edit
    end
  end
end
