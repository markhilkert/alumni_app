class AddProfileIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :profile_id, :integer
  end
end
