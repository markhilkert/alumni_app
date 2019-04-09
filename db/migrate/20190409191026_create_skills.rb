class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :competence
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
