class Visit < ActiveRecord::Base

  attr_accessible :link_id, :user_id

  belongs_to :user
  belongs_to :link

  def self.add_visit(link, user)
    v = Visit.create(:link_id=>link.id, :user_id=>user.id)
  end

  def self.count(link)
    Visit.where(:link_id=>link.id).count
  end

  def self.uniq_count(link)
    result = Visit.where(:link_id=>link.id)
    counter = Hash.new(:false)

    result.each do |visit|
      counter[visit[:user_id]] = :true
    end

    counter.keys.count
  end

  def self.recent_count(link)
    time_range = (Time.now - 600)..Time.now
    Visit.where(:link_id=>link.id, :created_at => time_range).count
  end

end



