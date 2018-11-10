class OracleController < ApplicationController
  def index
    ip_address = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_ip
    md5 = Digest::MD5.hexdigest(ip_address)
    @rnd = md5.slice(0, 3).hex % $IMG_LIST.length
    @img_name = $IMG_LIST[@rnd]
    @description_msg = $DES_LIST[@rnd]
    p @rnd
  end
end
