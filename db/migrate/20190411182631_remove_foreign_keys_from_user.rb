class RemoveForeignKeysFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :skill_id, :integer
    remove_column :users, :job_id, :integer
    remove_column :users, :education_id, :integer
    remove_column :jobs, :profile_id, :integer
    add_column :skills, :user_id, :integer
    add_column :projects, :user_id, :integer
    add_column :jobs, :user_id, :integer
    add_column :educations, :user_id, :integer
  end
end
