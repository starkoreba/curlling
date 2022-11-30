class ActivitiesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to activities_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
  params.require(:activity).permit(:title, :start_date, :end_date, :description, :price, :address)
  end
end
