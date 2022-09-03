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

ActiveRecord::Schema[7.0].define(version: 2022_09_01_110229) do
  create_table "advises", force: :cascade do |t|
    t.string "body"
    t.integer "counsellor_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "appoint_id", null: false
    t.index ["appoint_id"], name: "index_advises_on_appoint_id"
    t.index ["counsellor_id"], name: "index_advises_on_counsellor_id"
    t.index ["customer_id"], name: "index_advises_on_customer_id"
  end

  create_table "appoints", force: :cascade do |t|
    t.datetime "date"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "counsellor_id", null: false
    t.datetime "starttime"
    t.datetime "endtime"
    t.index ["counsellor_id"], name: "index_appoints_on_counsellor_id"
    t.index ["customer_id"], name: "index_appoints_on_customer_id"
  end

  create_table "counsellors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "service"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "date"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "counsellor_id", null: false
    t.integer "customer_id", null: false
    t.string "body"
    t.integer "appoint_id", null: false
    t.index ["appoint_id"], name: "index_feedbacks_on_appoint_id"
    t.index ["counsellor_id"], name: "index_feedbacks_on_counsellor_id"
    t.index ["customer_id"], name: "index_feedbacks_on_customer_id"
  end

  add_foreign_key "advises", "appoints"
  add_foreign_key "advises", "counsellors"
  add_foreign_key "advises", "customers"
  add_foreign_key "appoints", "counsellors"
  add_foreign_key "appoints", "customers"
  add_foreign_key "feedbacks", "appoints"
  add_foreign_key "feedbacks", "counsellors"
  add_foreign_key "feedbacks", "customers"
end
