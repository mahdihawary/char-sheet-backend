class CreateCharacterSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :character_spells do |t|
      t.integer :character_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
