class AddUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :developers, :user
  end
end
