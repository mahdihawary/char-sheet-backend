class AddColumnToClassTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :class_types, :spellcaster, :boolean
  end
end
