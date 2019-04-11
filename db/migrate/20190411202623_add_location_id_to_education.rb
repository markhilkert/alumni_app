class AddLocationIdToEducation < ActiveRecord::Migration[5.2]
  def change
    add_column :educations, :location_id, :integer
    remove_column :educations, :graduation_date, :integer
    remove_column :educations, :degree, :string
    remove_column :educations, :field, :string
  end
end
