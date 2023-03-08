class AddColumnToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :desc, :string
  end
end
