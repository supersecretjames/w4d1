class Comment < ActiveRecord::Base

  attr_accessible :link_id, :user_id, :content

  belongs_to :user
  belongs_to :link

  def self.make_comment(link, user, comment)
    self.create(:link_id=>link.id, :user=>user.id, :comment=>comment)
  end


end