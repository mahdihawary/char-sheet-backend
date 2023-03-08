class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :class
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
