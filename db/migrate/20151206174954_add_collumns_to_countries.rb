class AddCollumnsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :name, :string
  end
end
