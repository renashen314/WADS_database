json.extract! webapp, :id, :project_name, :language, :framework, :description, :notes, :status, :authentication, :database, :server_os, :server_location, :documentation, :git_repo, :app_url, :risk_manage_consideration, :start_date, :end_date, :created_at, :updated_at
json.url webapp_url(webapp, format: :json)
