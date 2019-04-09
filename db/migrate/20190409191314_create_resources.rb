class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.string :url
      t.date :date
      t.integer :category

      t.timestamps
    end
  end
end