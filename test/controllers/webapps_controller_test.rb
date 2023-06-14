require "test_helper"

class WebappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webapp = webapps(:one)
  end

  test "should get index" do
    get webapps_url
    assert_response :success
  end

  test "should get new" do
    get new_webapp_url
    assert_response :success
  end

  test "should create webapp" do
    assert_difference("Webapp.count") do
      post webapps_url, params: { webapp: { app_url: @webapp.app_url, authentication: @webapp.authentication, database: @webapp.database, description: @webapp.description, documentation: @webapp.documentation, end_date: @webapp.end_date, framework: @webapp.framework, git_repo: @webapp.git_repo, language: @webapp.language, notes: @webapp.notes, project_name: @webapp.project_name, risk_manage_consideration: @webapp.risk_manage_consideration, server_location: @webapp.server_location, server_os: @webapp.server_os, start_date: @webapp.start_date, status: @webapp.status } }
    end

    assert_redirected_to webapp_url(Webapp.last)
  end

  test "should show webapp" do
    get webapp_url(@webapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_webapp_url(@webapp)
    assert_response :success
  end

  test "should update webapp" do
    patch webapp_url(@webapp), params: { webapp: { app_url: @webapp.app_url, authentication: @webapp.authentication, database: @webapp.database, description: @webapp.description, documentation: @webapp.documentation, end_date: @webapp.end_date, framework: @webapp.framework, git_repo: @webapp.git_repo, language: @webapp.language, notes: @webapp.notes, project_name: @webapp.project_name, risk_manage_consideration: @webapp.risk_manage_consideration, server_location: @webapp.server_location, server_os: @webapp.server_os, start_date: @webapp.start_date, status: @webapp.status } }
    assert_redirected_to webapp_url(@webapp)
  end

  test "should destroy webapp" do
    assert_difference("Webapp.count", -1) do
      delete webapp_url(@webapp)
    end

    assert_redirected_to webapps_url
  end
end
