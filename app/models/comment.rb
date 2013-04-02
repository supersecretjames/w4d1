class Comment < ActiveRecord::Base

  attr_accessible :link_id, :user_id, :content

  belongs_to :user
  belongs_to :link

  # REV: I am not sure what this is for?
  #      it seems like the method is identical to the method inside?  
  def self.make_comment(link, user, comment)
    self.create(:link_id=>link.id, :user=>user.id, :comment=>comment)
  end


end