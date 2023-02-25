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

ActiveRecord::Schema.define(version: 2023_02_25_202030) do

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comments"
    t.integer "star_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "products_id"
    t.integer "users_id"
    t.index ["products_id"], name: "index_reviews_on_products_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["phone_number"], name: "index_users_on_phone_number"
    t.index ["user_email"], name: "index_users_on_user_email"
  end

  add_foreign_key "reviews", "products", column: "products_id"
  add_foreign_key "reviews", "users", column: "users_id"
end
