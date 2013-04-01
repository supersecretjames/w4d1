class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :link_id
      t.integer :user_id

      t.timestamps
    end
  end
end
