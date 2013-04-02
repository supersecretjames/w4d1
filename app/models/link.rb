require 'securerandom'

class Link < ActiveRecord::Base

  attr_accessible :long_id, :short, :user_id

  validates :long_id, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :long
  has_many :comment

  def self.open_short(link, user)
    link.open
    Visit.add_visit(link, user)
  end

  #REV This might make more sense as an instance method for users?

  def self.user_links(user)

    Link.where(:user_id=>user.id)

  end



  def make_short_url
    if long_id && short.nil?
      short_link = SecureRandom.urlsafe_base64
      self.short = short_link
      save
    end
  end

  def open
    result = Long.find(long_id)
    Launchy.open(result.long)
  end

  def visits
    Visit.count(self)
  end

  def unique_visits
    Visit.uniq_count(self)
  end

  def recent_visits
    Visit.recent_count(self)
  end


end