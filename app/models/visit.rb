class Visit < ActiveRecord::Base

  attr_accessible :link_id, :user_id

  belongs_to :user
  belongs_to :link

  def self.add_visit(link, user)
    self.create(:link_id=>link.id, :user_id=>user.id)
  end

  def self.count(link)
    self.where(:link_id=>link.id).count
  end

  def self.uniq_count(link)

    self.select("DISTINCT(user_id)")
        .where(:link_id=>link.id)
        .count

  end

  def self.recent_count(link)
    time_range = (Time.now - 600)..Time.now
    self.where(:link_id=>link.id, :created_at => time_range).count
  end

end



