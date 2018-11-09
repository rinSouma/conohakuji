require "digest/md5"
class HomeController < ApplicationController
  def index
    if params[:key] then
      rnd = params[:key].slice(0, 3).hex % $IMG_LIST.length
      @img_name = $IMG_LIST[rnd]
      @description_msg = $DES_LIST[rnd]
    end
  end
end
