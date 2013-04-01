class Long < ActiveRecord::Base

  attr_accessible :long

  has_one :link

end