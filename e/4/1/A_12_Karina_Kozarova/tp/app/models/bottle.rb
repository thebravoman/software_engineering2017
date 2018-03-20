class Bottle < ApplicationRecord
  validates :table_id, presence: true
  validates_uniqueness_of :brand
end