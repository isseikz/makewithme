class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.integer :user_id
      t.boolean :patron
      t.boolean :innovator
      t.boolean :engineer
      t.boolean :landlord
      t.boolean :student

      t.timestamps null: false
    end
  end
end
