class CreateCharacterAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :character_abilities do |t|
      t.integer :character_id
      t.integer :ability_id

      t.timestamps
    end
  end
end
