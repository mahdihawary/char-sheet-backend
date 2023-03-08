class AddColumnToCharacters2 < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :skills, :string
    add_column :characters, :spells, :string
  end
end
