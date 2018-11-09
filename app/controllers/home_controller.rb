class HomeController < ApplicationController
  def index
    p $IMG_LIST[0]
    
    p params[:key]
  end
end
