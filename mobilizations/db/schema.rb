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

ActiveRecord::Schema.define(version: 20180228162303) do

  create_table "meta", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "status", default: 0, null: false
    t.integer "meta_type", default: 0, null: false
    t.float "limit"
    t.datetime "time_limit"
    t.datetime "aproved_at"
    t.datetime "closed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unity", null: false
    t.integer "usuarios_id"
    t.index ["usuarios_id"], name: "index_meta_on_usuarios_id"
  end

  create_table "realizacao_meta", force: :cascade do |t|
    t.text "comentario", null: false
    t.float "contribuicao", null: false
    t.integer "meta_id"
    t.integer "criado_por"
    t.datetime "aprovado_em"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aprovado_por"
    t.index ["aprovado_por"], name: "index_realizacao_meta_on_aprovado_por"
    t.index ["criado_por"], name: "index_realizacao_meta_on_criado_por"
    t.index ["meta_id"], name: "index_realizacao_meta_on_meta_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.integer "points", default: 0, null: false
    t.integer "level", default: 0, null: false
    t.integer "admin_level", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votos", force: :cascade do |t|
    t.boolean "votos", null: false
    t.integer "meta_id", null: false
    t.integer "usuario_id", null: false
    t.index ["meta_id"], name: "index_votos_on_meta_id"
    t.index ["usuario_id"], name: "index_votos_on_usuario_id"
  end

end
