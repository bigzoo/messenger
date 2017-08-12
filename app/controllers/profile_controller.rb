class ProfileController < ApplicationController
  before_action :authenticate_user! #, :except => [:show, :index]
  def index
    @user = User.find(current_user.id)
  end
end
