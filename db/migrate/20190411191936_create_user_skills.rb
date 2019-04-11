class CreateUserSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skills do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :competence
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
