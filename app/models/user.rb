class User < ActiveRecord::Base

  attr_accessible :email, :username

  #REV Has_many should always be pluralized

  has_many :link
  has_many :comment
  has_many :visit

  def links

    link_array = Link.user_links(self)
    link_array.map do |link|
      Long.find(link.long_id).long
    end

  end


end