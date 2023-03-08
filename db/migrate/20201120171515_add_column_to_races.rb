class AddColumnToRaces < ActiveRecord::Migration[6.0]
  def change
    add_column :races, :name, :string
    add_column :races, :image, :string
    add_column :races, :ability, :string
    add_column :races, :ability_score, :integer
  end
end
