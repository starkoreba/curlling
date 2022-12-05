class UserBadgesController < ApplicationController

  def create
    user = User.find(params[:user_id])
    activity = Activity.find(params[:activity_id])
    user_badge = UserBadge.new(user_badge_params)
    user_badge.user = user
    user_badge.activity = activity

    if user_badge.save
     user.user_badge_as_receiver = user_badge
    end
  end

private

  def user_badge_params
    params.require(:user_badge).permit(:badge)
  end
end
