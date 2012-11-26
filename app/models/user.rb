class User < ActiveRecord::Base
  attr_accessible :email, :fname, :password, :password_confirmation, :lname
  
  has_many :foods
  
  has_secure_password
  
  validates_uniqueness_of :email
  
end
