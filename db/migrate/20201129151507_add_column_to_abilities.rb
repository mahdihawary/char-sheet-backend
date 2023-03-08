class AddColumnToAbilities < ActiveRecord::Migration[6.0]
  def change
    add_column :abilities, :level, :string
  end
end
