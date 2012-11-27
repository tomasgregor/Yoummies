class Location < ActiveRecord::Base
  attr_accessible :food_id, :shop_id
  
  belongs_to :food
  belongs_to :shop
  
end
