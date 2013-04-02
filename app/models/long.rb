# REV: a bit of an odd name...
class Long < ActiveRecord::Base

  attr_accessible :long # REV: maybe this could be called url? 
  
  # REV: I belive you need to pluralize this so it reads has_many :links
  has_many :link

end