class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  #共通定数
  $IMG_LIST = {0 => "01_daikiti.png", 1 => "02_tyukiti.png", 2 => "03_kokiti.png", 3=> "04_kiti.png" \
               , 4 => "05_hankiti.png", 5 => "06_suekiti.png", 6 => "07_suekokiti.png", 7 => "08_kyo.png" \
               , 8 => "09_kokyou.png", 9 => "10_hankyo.png", 10 => "11_suekyo.png", 11 => "12_daikyo.png" }

end
