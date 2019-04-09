class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :technology
      t.integer :type

      t.timestamps
    end
  end
end
