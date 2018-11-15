class OracleController < ApplicationController
  def index
    if request.referer.blank?
      redirect_to controller: 'home', action: 'index'
    end
    
    ip_address = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_ip
    md5 = Digest::MD5.hexdigest(ip_address << Date.today.to_s)
    @rnd = md5.slice(0, 3).hex % $IMG_LIST.length
    @img_name = $IMG_LIST[@rnd]
    @description_msg = $DES_LIST[@rnd]
  end
end
