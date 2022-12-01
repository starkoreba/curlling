class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @user = current_user
    @activity = Activity.find(params[:activity_id])
    @participation.user = @user
    @participation.activity = @activity
    @participation.save
    redirect_to activity_participation_path(@activity, @participation)
  end
end
