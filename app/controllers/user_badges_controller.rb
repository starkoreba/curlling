class UserBadgesController < ApplicationController

  def new
    @user_badge = User_badge.new(params [:activity_id])
  end

  def create
    # @activity = find()
    # new_user_badge = User_badge.new
    # @badge = Badge.find([:id])
    # new_user_badge = current_user.user_badge_as_giver
    # new_user_badge =

  end
end
