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

ActiveRecord::Schema.define(version: 20150910152032) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name"
    t.binary   "photo"
    t.string   "reference"
    t.string   "mobile",     null: false
    t.string   "email",      null: false
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_groups", id: false, force: :cascade do |t|
    t.integer "customer_id"
    t.integer "group_id"
  end

  add_index "customers_groups", ["customer_id"], name: "index_customers_groups_on_customer_id"
  add_index "customers_groups", ["group_id"], name: "index_customers_groups_on_group_id"

  create_table "customers_identities", id: false, force: :cascade do |t|
    t.integer "customer_id"
    t.integer "identity_id"
  end

  add_index "customers_identities", ["customer_id"], name: "index_customers_identities_on_customer_id"
  add_index "customers_identities", ["identity_id"], name: "index_customers_identities_on_identity_id"

  create_table "customers_pricings", id: false, force: :cascade do |t|
    t.integer "customer_id"
    t.integer "pricing_id"
  end

  add_index "customers_pricings", ["customer_id"], name: "index_customers_pricings_on_customer_id"
  add_index "customers_pricings", ["pricing_id"], name: "index_customers_pricings_on_pricing_id"

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id"
    t.integer "product_id"
  end

  add_index "customers_products", ["customer_id"], name: "index_customers_products_on_customer_id"
  add_index "customers_products", ["product_id"], name: "index_customers_products_on_product_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string   "name",                  null: false
    t.text     "comments"
    t.integer  "customer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  add_index "identities", ["customer_id"], name: "index_identities_on_customer_id"

  create_table "packages", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "status_id"
    t.integer  "group_id"
    t.integer  "product_id"
    t.integer  "pricing_id"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pricings", force: :cascade do |t|
    t.integer  "cost_price", null: false
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       null: false
    t.text     "comment",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
