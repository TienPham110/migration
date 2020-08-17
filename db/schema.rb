# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_17_163543) do

  create_table "albums", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "share_a"
    t.bigint "user_contain_id", null: false
    t.bigint "id_u_id"
    t.bigint "user_id"
    t.index ["id_u_id"], name: "index_albums_on_id_u_id"
    t.index ["user_contain_id"], name: "index_albums_on_user_contain_id"
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "share_p"
    t.bigint "user_contain_id", null: false
    t.bigint "user_contain_photo_id"
    t.index ["user_contain_id"], name: "index_photos_on_user_contain_id"
    t.index ["user_contain_photo_id"], name: "index_photos_on_user_contain_photo_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "id_u"
  end

  add_foreign_key "albums", "users"
end
