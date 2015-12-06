class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :requirement_id
      t.integer :follower_id

      t.timestamps null: false
    end
  end
end
