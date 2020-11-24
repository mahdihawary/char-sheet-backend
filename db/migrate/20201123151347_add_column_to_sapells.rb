class AddColumnToSapells < ActiveRecord::Migration[6.0]
  def change
    add_column :spells, :class_type_id, :integer
  end
end
