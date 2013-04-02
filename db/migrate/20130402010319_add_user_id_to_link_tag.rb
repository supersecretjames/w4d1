class AddUserIdToLinkTag < ActiveRecord::Migration
  def change
    change_table :link_tags do |t|
      t.integer :user_id
    end
  end
end
