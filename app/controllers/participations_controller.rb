class ParticipationsController < ApplicationController
  before_action :set_activity, only: %i[create show edit destroy]

  def create
    @participation = Participation.new
    @participation.user = current_user
    @participation.activity = @activity
    @participation.save
    redirect_to activity_participation_path(@activity, @participation)
  end

  def show
    @participation = Participation.find(params[:id])
    @private_message = @activity.private_message
  end

  private

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

end
