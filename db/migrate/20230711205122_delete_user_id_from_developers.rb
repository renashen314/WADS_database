class DeleteUserIdFromDevelopers < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :user_id, :integer
  end
end
