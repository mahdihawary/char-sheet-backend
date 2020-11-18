class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.integer :health
      t.integer :strength
      t.integer :wisdom
      t.integer :dexterity
      t.integer :intelligence
      t.integer :charisma
      t.integer :constitution
      t.integer :level
      t.string :image
      t.integer :darkvision
      t.integer :speed
      t.integer :proficiency
      t.string :name
      t.string :class
      t.string :race
      t.string :armor
      t.integer :initiative

      t.timestamps
    end
  end
end
