class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_activity, only: %i[show edit destroy]

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
    @activity = Activity.new(params_activity)
    @activity.user = current_user
    if @activity.save

    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(params_activity)
    redirect_to activity_path
  end

  def destroy
    @activity.destroy
  end

  private


  def params_activity
    params.require(:activity).permit(:title, :description, :address, :start_date, :end_date, :price, :category_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
