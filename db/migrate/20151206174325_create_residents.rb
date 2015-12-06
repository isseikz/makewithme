class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.integer :user_id
      t.integer :country_id
      t.integer :prefecture_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
