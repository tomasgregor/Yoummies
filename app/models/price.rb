class Price < ActiveRecord::Base
  attr_accessible :price, :food_id
  
  belongs_to :food
  
end
