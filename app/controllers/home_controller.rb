require "digest/md5"
class HomeController < ApplicationController
  def index
    if params[:id] then
      @img_name = $IMG_LIST[params[:id].to_i]
      @description_msg = $DES_LIST[params[:id].to_i]
    end
  end
end
