class Visit < ActiveRecord::Base

  attr_accessible :link_id, :user_id

  belongs_to :user
  belongs_to :link

  def self.add_visit(link, user)
    Visit.create(:link_id=>link.id, :user_id=>user.id)
  end




end