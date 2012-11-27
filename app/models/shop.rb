class Shop < ActiveRecord::Base
  attr_accessible :address, :name
  
  has_many :foods, :through => :locations
  
end
