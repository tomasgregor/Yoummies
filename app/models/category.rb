class Category < ActiveRecord::Base
  attr_accessible :food_category
  
  has_many :foods
  
end
