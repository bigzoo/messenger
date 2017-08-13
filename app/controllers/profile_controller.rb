class ProfileController < ApplicationController
  before_action :authenticate_user! #, :except => [:show, :index]
  def index
    @sent = Message.where(sender_id:current_user.id)
    @user = User.find(current_user.id)
    @favorites = @user.messages.where(favorite:true)  
  end
end
