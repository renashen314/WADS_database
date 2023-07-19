# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_04_192649) do
  create_table "dev_apps", force: :cascade do |t|
    t.integer "developer_id", null: false
    t.integer "webapp_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_dev_apps_on_developer_id"
    t.index ["webapp_id"], name: "index_dev_apps_on_webapp_id"
  end

  create_table "developers", force: :cascade do |t|
    t.string "uniqname"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webapps", force: :cascade do |t|
    t.string "project_name"
    t.string "language"
    t.string "framework"
    t.text "description"
    t.text "notes"
    t.string "status"
    t.string "authentication"
    t.string "database"
    t.string "server_os"
    t.string "server_location"
    t.string "documentation"
    t.string "git_repo"
    t.string "app_url"
    t.string "risk_manage_consideration"
    t.date "launch_date"
    t.date "end_of_life_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dev_apps", "developers"
  add_foreign_key "dev_apps", "webapps"
end
