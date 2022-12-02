class UsersController < ApplicationController
  def show
    @user = current_user
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
