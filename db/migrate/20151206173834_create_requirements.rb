class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :title
      t.string :illust
      t.string :tags
      t.string :detail
      t.integer :inventor_id
      t.integer :follower_id
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end
