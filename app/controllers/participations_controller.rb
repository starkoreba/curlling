class ParticipationsController < ApplicationController
  def show
    @participation = Participation.new
    @activity = Activity.find(params[:activity_id])
    @participation.activity = @activity
  end
end
