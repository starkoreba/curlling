class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    # if params[:query].present?
    #   @categories = Category.global_search(:query)
    # else
    # end
    @categories = Category.all
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: {activity: activity})
      }
    end
    #@activities_cat = @categories.map { |category| category.activities }

    if params[:address]
      #@activities = @activities.search_by_city("%#{params[:query]}%+%#{params[:address]}%")
      #@activities_cat = @activities.group_by(&:category).values
    end

    if params[:query]
      @activities = @activities.search_by_title_and_category("%#{params[:query]}%")
    end
    @activities_cat = @activities.group_by(&:category).values
    # array d'array
  end

  def show
    @new_participation = Participation.new
  end

  def infos
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(params_activity)
    @activity.user = current_user
    if creator?
      @activity.save
      if @activity.save
        redirect_to @activity
      else
        render :new, status: :unprocessable_entity
      end
    else
      redirect_to infos_path
    end
  end

  def edit
  end

  def update
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

  def creator?
    current_user.score > 100
  end
end
