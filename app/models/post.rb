class Post < ActiveRecord::Base
  attr_accessible :food_id, :note, :picture, :rating
  
  belongs_to :food
  
end
