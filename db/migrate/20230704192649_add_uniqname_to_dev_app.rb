class AddUniqnameToDevApp < ActiveRecord::Migration[7.0]
  def change
    add_column :dev_apps, :uniqname, :string
  end
end
