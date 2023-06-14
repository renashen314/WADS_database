class CreateDevApps < ActiveRecord::Migration[7.0]
  def change
    create_table :dev_apps do |t|
      t.integer :dev_id
      t.integer :app_id

      t.timestamps
    end
  end
end
