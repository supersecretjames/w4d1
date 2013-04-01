class User < ActiveRecord::Base

  attr_accessible :email, :username

  has_many :link
  has_many :comment
  has_many :visit

end