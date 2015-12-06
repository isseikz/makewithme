class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :requirement_id
      t.integer :comment_id
      t.integer :photo_id
      t.integer :task_id
      t.integer :schedule_id
      t.integer :topic_id
      t.integer :member_id
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
