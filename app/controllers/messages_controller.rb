class MessagesController < ApplicationController
  def create
    @private_message = PrivateMessage.find(params[:private_message_id])
    @message = Message.new(message_params)
    @message.private_message = @private_message
    @message.user = current_user
    if @message.save
      redirect_to activity_participation_private_message_path(@private_message)
    else
      render "activity_participation_private_message/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
