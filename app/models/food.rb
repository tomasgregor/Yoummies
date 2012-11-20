class Food < ActiveRecord::Base
  attr_accessible :category_id, :name, :picture, :remote_picture_url, :price, :user_id, :posts_attributes, :price_id
  
  belongs_to :user
  has_many :posts
  
  accepts_nested_attributes_for :posts
  
  mount_uploader :picture, PictureUploader
  
end
