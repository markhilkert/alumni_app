class AddProfileToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skill_id, :integer
    add_column :users, :job_id, :integer
    add_column :users, :project_id, :integer
    add_column :users, :location_id, :integer
    add_column :users, :education_id, :integer
    add_column :users, :title, :string
    add_column :users, :bio, :text
    add_column :users, :linkedin_url, :string
    add_column :users, :github_url, :string
    add_column :users, :personal_website_url, :string
    add_column :users, :picture_url, :string
    drop_table :profiles
  end
end
