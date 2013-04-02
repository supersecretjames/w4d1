class Tag < ActiveRecord::Base

  attr_accessible :tag

  has_many :link_tag

end