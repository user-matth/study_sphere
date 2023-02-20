class HomeController < ApplicationController
  # before_action :authenticate_user!
  
  def index
    @forums = Forum.all
  end
end
