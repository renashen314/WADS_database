class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :uniqname
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
