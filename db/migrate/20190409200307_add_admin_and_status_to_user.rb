class AddAdminAndStatusToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :status, :integer

  end
end
