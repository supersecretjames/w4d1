class Tag < ActiveRecord::Base

  attr_accessible :tag

  has_many :link_tag

  def most_popular(tag)
   results = Link.where(:tag_id=>tag.id).limit(5)
  end
end