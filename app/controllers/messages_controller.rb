class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice]= 'Message Sent Succesfully'
      redirect_to root_path
    else
      flash[:alert]= 'An error occurred! Try Again.'
      redirect_to root_path
    end
  end

  private
  def message_params
    sender_id_h = {sender_id:current_user.id} if user_signed_in?
    if sender_id_h
      params.require(:message).permit(:user_id,:message).merge(sender_id_h)
    else
      params.require(:message).permit(:user_id,:message)
    end
  end
end