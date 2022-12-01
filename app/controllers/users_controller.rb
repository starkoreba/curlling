class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:user).permit(:nickname, :first_name, :last_name, :birthday, :role, :score, :photo)
  end

end
