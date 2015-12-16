class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :user_id
      t.integer :speciality_id
      t.datetime :birthdate
      t.integer :job_id
      t.integer :resident_id
      t.string :favorite
      t.string :tags
      t.string :icon
      t.string :twitter
      t.string :facebook
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
