class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :long_id
      t.string :short
      t.integer :user_id

      t.timestamps
    end
  end
end
