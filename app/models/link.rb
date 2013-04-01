require 'securerandom'

class Link < ActiveRecord::Base

  attr_accessible :long_id, :short, :user_id

  validates :long_id, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :long

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

  def self.open_short(short_url, user)
    link = Link.find_by_short(short_url)
    link.open
    Visit.add_visit(link, user)
  end
end