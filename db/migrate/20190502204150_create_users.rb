class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
        t.string "email", default: "", null: false
        t.boolean "admin", default: false
        t.integer "status"
        t.integer "location_id"
        t.string "title"
        t.text "bio"
        t.string "linkedin_url"
        t.string "github_url"
        t.string "personal_website_url"
        t.string "picture_url"
        t.string "first_name"
        t.string "last_name"
        t.string "password_digest"
      t.timestamps
    end
  end
end
