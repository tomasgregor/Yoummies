class Post < ActiveRecord::Base
  attr_accessible :note, :picture, :rating, :food_id 
  
  belongs_to :food
  
end
