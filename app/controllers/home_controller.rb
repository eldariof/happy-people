class HomeController < ApplicationController
  def index
    @uploads = Upload.joins(:user).find(:all, :order => 'rating DESC', :limit => 9)
  end
end
