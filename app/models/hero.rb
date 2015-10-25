class Hero < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  STRENGTH, AGILITY, INTELIGENT = 1, 2, 3
  FRONT, MIDDLE, BEHIND = 1, 2, 3

  IMG_PATH = "heroes/"
  TYPE_MASTERS = {"STRENGTH" => STRENGTH, "AGILITY" => AGILITY, "INTELIGENT" => INTELIGENT}
  POSITION_MASTERS = {"前" => 1, "中" => 2, "後" => 3}
  IMAGES = Dir.glob("app/assets/images/heroes/*.png").map{|img| "assets/" + img.split('images/')[1]}

  has_many :rel_hero_divides
  has_many :skills
  has_many :rel_hero_grown_levels

end
