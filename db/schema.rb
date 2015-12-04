# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151204073932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "training_id"
  end

  add_index "categories", ["training_id"], name: "index_categories_on_training_id", using: :btree

  create_table "certifications", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "training_id"
  end

  add_index "certifications", ["training_id"], name: "index_certifications_on_training_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "org_name"
    t.string   "org_address"
    t.string   "org_city"
    t.string   "org_state"
    t.string   "org_phone"
    t.string   "org_website"
    t.string   "org_contactphone"
    t.string   "org_contactname"
    t.boolean  "fes_certified"
    t.string   "member_type"
    t.date     "membership_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.string   "location_address"
    t.string   "location_city"
    t.string   "location_state"
    t.string   "trainer1"
    t.string   "trainer2"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "certification_id"
  end

  add_index "trainings", ["category_id"], name: "index_trainings_on_category_id", using: :btree
  add_index "trainings", ["certification_id"], name: "index_trainings_on_certification_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organization_name"
    t.string   "email"
    t.string   "phone"
    t.string   "trainings_taken"
    t.string   "certifications_earned"
    t.string   "trainings_registered"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "categories", "trainings"
  add_foreign_key "certifications", "trainings"
  add_foreign_key "trainings", "categories"
  add_foreign_key "trainings", "certifications"
end
