class UsersController < ApplicationController
  def show
    @message = Message.new
    @user = User.find_by_username!(params[:username])
    # @user = find_by_username!(request.username)
  end
end
