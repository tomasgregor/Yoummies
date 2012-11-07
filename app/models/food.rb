class Food < ActiveRecord::Base
  attr_accessible :category_id, :name, :picture, :price, :posts_attributes
  
  has_many :posts
  
  accepts_nested_attributes_for :posts
  
end
