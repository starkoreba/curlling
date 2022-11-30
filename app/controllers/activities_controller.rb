class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_activity, only: %i[show edit destroy]
  before_action :set_category, only: %i[new create]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @activity.destroy
  end

  private

  def params_activity
    params.require(:activity).permit(:title, :description, :address, :start_date, :end_date, :price)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
