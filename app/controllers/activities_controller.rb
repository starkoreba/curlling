class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_activity, only: %i[show edit destroy]
  before_action :set_category, only: %i[new create]

  def index
    @categories = Category.all
    @activities_cat = @categories.map { |category| category.activities }
    # array d'array
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

  def edit
  end

  def update
  end

  def destroy
    @activity.destroy
  end

  private

  def activity_params
  params.require(:activity).permit(:title, :description, :start_date, :end_date, :price, :address, :category_id)

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
