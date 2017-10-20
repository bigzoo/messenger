class ExploreController < ApplicationController
  def index
  end

  def search
    @results = User.where("username like ?", "#{search_params}")
  end

  # private
  def search_params
    if params[:name]
      params.permit(:name)
    else
      params.require(:search).permit(:name)
    end
  end
end
