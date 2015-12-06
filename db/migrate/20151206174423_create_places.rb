class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :team_id
      t.integer :country_id
      t.integer :prefecture_id
      t.integer :city_id
      t.string :address

      t.timestamps null: false
    end
  end
end
