class AddRolesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :supervisor_role, :boolean, default: false
    add_column :users, :developer_role, :boolean, default: true
  end
end
