class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :location_id
      t.integer :company_id
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
