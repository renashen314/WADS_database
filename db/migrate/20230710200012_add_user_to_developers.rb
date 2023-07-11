class AddUserToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_reference :developers, :user, index: true, foreign_key: true
  end
end
