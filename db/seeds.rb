require 'csv'

CSV::Converters[:blank_to_nil] = lambda do |field|
  field && field.empty? ? nil : field
end

csv_file_path = Rails.root.join('lib', 'seeds', 'Seed_Webapp.csv')
# csv_file = CSV.parse(csv_file_path, headers: true, converters: [:blank_to_nil]) 
CSV.foreach(csv_file_path, headers: true, converters: [:blank_to_nil]) do |row|
  Webapp.create!(
    project_name: row['Project Name'],
    language: row['Language'],
    framework: row['Framework'],
    description: row['Description'],
    notes: row['Notes'],
    status: row['Status'],
    authentication: row['Authentication'],
    database: row['Database'],
    server_os: row['Server OS'],
    server_location: row['Server(s) Location'],
    documentation: row['Documentation'],
    git_repo: row['Repo'],
    app_url: row['Application URL'],
    risk_manage_consideration: row['Risk Management Considerations'],
    launch_date: row['Launch Date'],
    end_of_life_date: row['End of Life Date']
    )
end

puts "There are now #{Webapp.count} rows in the webapp table"