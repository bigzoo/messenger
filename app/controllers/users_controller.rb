class UsersController < ApplicationController
  def show
    begin
      @user = User.find_by_username!(params[:username])
      @message = Message.new
    rescue ActiveRecord::RecordNotFound
      @message = Message.new
      @user = User.new(username:'User Not Found')
    end
    # Below line enables subdomains
    # @user = User.find_by_username!(request.subdomain)
  end

  def update
    @user = current_user
    if @user.update
      flash[:notice] = "Settings Updated Successfully!"
      redirect_to settings_path
    else
      flash[:alert] = "An Error Occurred. Please Try Again."
      redirect_to settings_path
    end
  end

  def user_params
    params.require(:user).permit(:public_profile,:public_messages)
  end
end
