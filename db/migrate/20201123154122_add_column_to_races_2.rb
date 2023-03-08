class AddColumnToRaces2 < ActiveRecord::Migration[6.0]
  def change
    add_column :races, :darkvision, :integer
    add_column :races, :speed, :integer
  end
end
