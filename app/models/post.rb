class Post < ActiveRecord::Base
  attr_accessible :note, :picture, :rating, :user_id, :postable_id, :postable_type 
  
  belongs_to :user
  belongs_to :postable, :polymorphic => true
  
end
