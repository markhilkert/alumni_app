class RemovetoJoinTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :educations, :user_id, :integer
    remove_column :skills, :competence, :integer
    remove_column :skills, :years_of_experience, :integer
    remove_column :skills, :user_id, :integer
  end
end
