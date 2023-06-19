class CreateDevApps < ActiveRecord::Migration[7.0]
  def change
    create_table :dev_apps do |t|
      t.references :developer, null: false, foreign_key: true
      t.references :webapp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
