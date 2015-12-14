class AddCollumnToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :area, :string
  end
end
