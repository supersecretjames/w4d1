class CreateLongs < ActiveRecord::Migration
  def change
    create_table :longs do |t|
      t.string :long

      t.timestamps
    end
  end
end
