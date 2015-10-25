class RelHeroDivide < ActiveRecord::Base
  has_one :item_set
  belongs_to :hero
  belongs_to :divide

  validates :hero_id, :divide_id, presence: true
  validates :hero_id, :divide_id, numericality: { only_integer: true }
  validates_uniqueness_of :divide_id, :scope => [:hero_id]

end
