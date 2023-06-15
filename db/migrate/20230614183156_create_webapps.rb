class CreateWebapps < ActiveRecord::Migration[7.0]
  def change
    create_table :webapps do |t|
      t.string :project_name
      t.string :language
      t.string :framework
      t.text :description
      t.text :notes
      t.string :status
      t.string :authentication
      t.string :database
      t.string :server_os
      t.string :server_location
      t.string :documentation
      t.string :git_repo
      t.string :app_url
      t.string :risk_manage_consideration
      t.date :launch_date
      t.date :end_of_life_date

      t.timestamps
    end
  end
end
