class Long < ActiveRecord::Base

  attr_accessible :long

  has_many :link

end