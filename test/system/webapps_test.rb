require "application_system_test_case"

class WebappsTest < ApplicationSystemTestCase
  setup do
    @webapp = webapps(:one)
  end

  test "visiting the index" do
    visit webapps_url
    assert_selector "h1", text: "Webapps"
  end

  test "should create webapp" do
    visit webapps_url
    click_on "New webapp"

    fill_in "App url", with: @webapp.app_url
    fill_in "Authentication", with: @webapp.authentication
    fill_in "Database", with: @webapp.database
    fill_in "Description", with: @webapp.description
    fill_in "Documentation", with: @webapp.documentation
    fill_in "End date", with: @webapp.end_date
    fill_in "Framework", with: @webapp.framework
    fill_in "Git repo", with: @webapp.git_repo
    fill_in "Language", with: @webapp.language
    fill_in "Notes", with: @webapp.notes
    fill_in "Project name", with: @webapp.project_name
    fill_in "Risk manage consideration", with: @webapp.risk_manage_consideration
    fill_in "Server location", with: @webapp.server_location
    fill_in "Server os", with: @webapp.server_os
    fill_in "Start date", with: @webapp.start_date
    fill_in "Status", with: @webapp.status
    click_on "Create Webapp"

    assert_text "Webapp was successfully created"
    click_on "Back"
  end

  test "should update Webapp" do
    visit webapp_url(@webapp)
    click_on "Edit this webapp", match: :first

    fill_in "App url", with: @webapp.app_url
    fill_in "Authentication", with: @webapp.authentication
    fill_in "Database", with: @webapp.database
    fill_in "Description", with: @webapp.description
    fill_in "Documentation", with: @webapp.documentation
    fill_in "End date", with: @webapp.end_date
    fill_in "Framework", with: @webapp.framework
    fill_in "Git repo", with: @webapp.git_repo
    fill_in "Language", with: @webapp.language
    fill_in "Notes", with: @webapp.notes
    fill_in "Project name", with: @webapp.project_name
    fill_in "Risk manage consideration", with: @webapp.risk_manage_consideration
    fill_in "Server location", with: @webapp.server_location
    fill_in "Server os", with: @webapp.server_os
    fill_in "Start date", with: @webapp.start_date
    fill_in "Status", with: @webapp.status
    click_on "Update Webapp"

    assert_text "Webapp was successfully updated"
    click_on "Back"
  end

  test "should destroy Webapp" do
    visit webapp_url(@webapp)
    click_on "Destroy this webapp", match: :first

    assert_text "Webapp was successfully destroyed"
  end
end
