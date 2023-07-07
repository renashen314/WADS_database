class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :superadmin_role, :boolean
    remove_column :users, :supervisor_role, :boolean
    remove_column :users, :developer_role, :boolean
  end
end
