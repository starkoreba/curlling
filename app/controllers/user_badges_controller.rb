class UserBadgesController < ApplicationController

  def create
    user = User.find(params[:user_id])
    activity = Activity.find(params[:activity_id])
    badge = Badge.find(params[:user_badge][:badge])
    user_badge = UserBadge.new
    user_badge.receiver = user
    user_badge.activity = activity
    user_badge.badge = badge
    user_badge.giver = current_user

    participation = Participation.find_by(user_id: current_user.id, activity_id: activity.id)

      respond_to do |format|
        if user_badge.save
          format.html { redirect_to activity_participation_path(activity, participation) }
          format.json { render json: user_badge }
        else
          format.html { redirect_to activity_participation_path(activity, participation)  }
          format.json { render json: user_badge.errors }
        end
      end


  end


end
