class PrivateMessagesController < ApplicationController
  before_action :set_private_message, only: :show
  before_action :set_activity, only: %i[create show edit destroy]

  def new
  end

  def create
    @private_message = PrivateMessage.new
    @private_message.user = current_user
    @private_message.activity = @activity
    @private_message.save
    redirect_to activity_participation_private_message_path(@activity, @private_message)
  end

  def show
    @private_message.activity = @activity
    @message = Message.new
  end

  private

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def set_private_message
    @private_message = PrivateMessage.find(params[:id])
  end
end
