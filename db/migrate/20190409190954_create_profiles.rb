class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :job_id
      t.integer :project_id
      t.integer :location_id
      t.integer :education_id
      t.string :title
      t.text :bio
      t.string :linkedin_url
      t.string :github_url
      t.string :personal_website_url
      t.string :picture_url

      t.timestamps
    end
  end
end
