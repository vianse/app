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

ActiveRecord::Schema.define(version: 20150925023418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agrupadores", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma_id"
  end

  add_index "agrupadores", ["idioma_id"], name: "index_agrupadores_on_idioma_id", using: :btree

  create_table "categoria", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma_id"
  end

  add_index "categoria", ["idioma_id"], name: "index_categoria_on_idioma_id", using: :btree

  create_table "estatuses", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idiomas", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_files", force: :cascade do |t|
    t.string   "name"
    t.integer  "reference_id"
    t.string   "reference_type"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticia", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.integer  "estatus_id"
    t.date     "fecha"
    t.integer  "categoria_id"
    t.string   "relevancia"
    t.integer  "agrupador_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "idioma_id"
    t.integer  "reference_id"
    t.string   "reference_type"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "noticia", ["agrupador_id"], name: "index_noticia_on_agrupador_id", using: :btree
  add_index "noticia", ["categoria_id"], name: "index_noticia_on_categoria_id", using: :btree
  add_index "noticia", ["estatus_id"], name: "index_noticia_on_estatus_id", using: :btree
  add_index "noticia", ["idioma_id"], name: "index_noticia_on_idioma_id", using: :btree

end
