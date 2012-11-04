class Food < ActiveRecord::Base
  attr_accessible :category_id, :name, :picture, :price, :shares_attributes
  
  has_many :shares
  
  accepts_nested_attributes_for :shares
  
end
