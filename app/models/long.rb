class Long < ActiveRecord::Base

  attr_accessible :long

  #REV has_many should be plurallized always

  has_many :link

end