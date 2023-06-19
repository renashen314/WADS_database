class DropDevApps < ActiveRecord::Migration[7.0]
  def change
    drop_table :dev_apps do |t|
      t.integer :dev_id, null: false
      t.integer :app_id, null: false
      t.timestamps null: false
    end
  end
end
