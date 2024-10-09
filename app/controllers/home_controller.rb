class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_users = User.all
    # binding.pry 

    # flash.now[:notice] = "#{@all_users.size} users registered."
  end

end
