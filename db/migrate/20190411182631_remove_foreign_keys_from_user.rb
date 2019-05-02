class RemoveForeignKeysFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :profile_id, :integer
    add_column :skills, :user_id, :integer
    add_column :projects, :user_id, :integer
    add_column :jobs, :user_id, :integer
    add_column :educations, :user_id, :integer
  end
end
