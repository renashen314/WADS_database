class AddDevelopersToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :developer, index: true, foreign_key: true
  end
end
