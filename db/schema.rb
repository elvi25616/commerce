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

ActiveRecord::Schema.define(version: 2020_04_21_042422) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "c_img_file_name"
    t.string "c_img_content_type"
    t.integer "c_img_file_size"
    t.datetime "c_img_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_favorites_on_product_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_has_categories_on_category_id"
    t.index ["product_id"], name: "index_has_categories_on_product_id"
  end

  create_table "my_payments", force: :cascade do |t|
    t.string "email"
    t.string "ip"
    t.string "status"
    t.string "price"
    t.string "paypal_id"
    t.string "total"
    t.integer "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_cart_id"], name: "index_my_payments_on_shopping_cart_id"
  end

  create_table "my_shopping_carts", force: :cascade do |t|
    t.integer "product_id"
    t.integer "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_my_shopping_carts_on_product_id"
    t.index ["shopping_cart_id"], name: "index_my_shopping_carts_on_shopping_cart_id"
  end

  create_table "myimages", force: :cascade do |t|
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.string "title"
    t.text "description"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_myimages_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "p_name"
    t.text "p_description"
    t.float "p_price"
    t.integer "p_quantify"
    t.float "p_send"
    t.boolean "p_available"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string "ip"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "last_name"
    t.integer "age"
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.string "state"
    t.string "city"
    t.string "street"
    t.string "uid"
    t.string "provider"
    t.string "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
