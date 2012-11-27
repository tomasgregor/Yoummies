class Food < ActiveRecord::Base
  attr_accessible :name, :picture, :remote_picture_url, :user_id, :category_id, :prices_attributes, :posts_attributes 
  
  belongs_to :user
  belongs_to :category
  has_many :posts
  has_many :prices
  has_many :shops, :through => :locations
  
  
  accepts_nested_attributes_for :prices
  accepts_nested_attributes_for :posts
  
  
  mount_uploader :picture, PictureUploader
  
end
