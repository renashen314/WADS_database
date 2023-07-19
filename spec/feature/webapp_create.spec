require "rails_helper"
feature "user creates webapp" do
  scenario "with valid data" do
    visit new_webapp_url

    fill_in "Project name", with: "Test app"
    click_button "Create webapp"

    expect(page).to have_content("Test app")
  end
end
