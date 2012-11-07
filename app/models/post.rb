class Post < ActiveRecord::Base
  attr_accessible :food_id, :note, :picture, :rating, :thumbdown, :thumbup
  
  belongs_to :food
  
end
