class DeleteUsersFromDevelopers < ActiveRecord::Migration[7.0]
    def change
      remove_column :users, :developer_id, :integer
    end
end
