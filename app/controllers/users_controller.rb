class UsersController < ApplicationController
  def show
    @message = Message.new
    @user = User.find_by_username!(params[:username])
    # Below line enables subdomains
    # @user = User.find_by_username!(request.subdomain)
  end
end
