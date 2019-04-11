class CreateUserEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_educations do |t|
      t.integer :user_id
      t.integer :education_id
      t.date :graduation_date
      t.string :degree
      t.string :field

      t.timestamps
    end
  end
end
