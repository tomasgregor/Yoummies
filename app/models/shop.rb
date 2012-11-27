class Shop < ActiveRecord::Base
  attr_accessible :address, :name, :user_id
  
  belongs_to :user
  has_many :foods, :through => :locations
  
end
