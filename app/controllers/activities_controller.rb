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
    @activity.user = current_user
    if @activity.save
      redirect_to activities_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
  params.require(:activity).permit(:title, :description, :start_date, :end_date, :price, :address, :category_id)
  end
end
