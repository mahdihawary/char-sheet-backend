class FixCharacter < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :class, :class_type
  end
end
