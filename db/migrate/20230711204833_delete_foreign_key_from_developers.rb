class DeleteForeignKeyFromDevelopers < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :foreign_key
  end
end
