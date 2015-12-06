class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :speciality_id
      t.integer :job_id
      t.integer :resident_id
      t.string :favorite
      t.string :icon
      t.string :twitter
      t.string :facebook
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
