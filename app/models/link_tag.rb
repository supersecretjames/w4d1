class LinkTag < ActiveRecord::Base

  attr_accessible :link_id, :tag_id, :user_id

  belongs_to :link
  belongs_to :tag
  belongs_to :user

  def self.tag_link(link, tag)
    self.create(:link_id=>link.id, :tag_id => tag.id, :user_id => user.id)
  end

  def most_popular(tag)
   # results = Link.where(:tag_id=>tag.id).limit(5).order('unique_visits desc')
  end

end