class CreateClassTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :class_types do |t|
      t.string :desc
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
