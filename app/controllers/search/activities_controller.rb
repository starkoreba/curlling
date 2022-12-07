class Search::ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @categories = Category.all
    @activities = Activity.all

    if !params[:address].blank?
      @activities = @activities.where('city ILIKE ?', "%#{params[:address]}%")
    end

    if !params[:query].blank?
      @activities = @activities.search_by_title_and_category("%#{params[:query]}%")
    end

    @activities_cat = @activities.group_by(&:category).values
  end
end
