class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :description
      t.string :class_list

      t.timestamps
    end
  end
end
