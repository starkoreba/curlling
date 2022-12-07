class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @num_badges = UserBadge.where(receiver_id: @user.id).group(:badge_id).count
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:user).permit(:nickname, :first_name, :last_name, :birthday, :role, :score, :avatar)
  end

end
