class Item < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  WHITE = 1
  GREEN = 2
  BLUE = 3
  PURPLE = 4
  ORANGE = 5
  TYPE_MASTERS = {
    "white" => WHITE,
    "green" => GREEN,
    "blue" => BLUE,
    "purple" => PURPLE,
    "orange" => ORANGE
  }
  IMG_PATH = "assets/items/"
  IMAGES = Dir.glob("app/assets/images/items/*.png").map{|img| "assets/" + img.split('images/')[1]}

  has_many :rel_set_items

end
