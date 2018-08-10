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

ActiveRecord::Schema.define(version: 2018_08_10_001201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agresors", force: :cascade do |t|
    t.string "sexo"
    t.boolean "conocido"
    t.integer "id_rango_edad"
    t.integer "id_etnia"
    t.integer "id_rango_estatura"
    t.integer "id_complexion_fisica"
    t.text "senales_particulares"
    t.integer "id_denuncia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complexion_fisicas", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "denuncia", force: :cascade do |t|
    t.integer "id_denunciante"
    t.boolean "esvictima"
    t.integer "id_victima"
    t.date "fecha_hora"
    t.float "latitud"
    t.float "longitud"
    t.text "descripcion"
    t.integer "id_tipo_agresion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etnia", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "tipo_id"
    t.string "numero_id"
    t.string "nombres"
    t.string "apellido"
    t.string "sexo"
    t.string "telefono"
    t.string "correo"
    t.integer "id_rango_edad"
    t.boolean "vive_localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rango_edads", force: :cascade do |t|
    t.string "nombre"
    t.integer "min"
    t.integer "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rango_estaturas", force: :cascade do |t|
    t.string "nombre"
    t.integer "min"
    t.integer "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_agresions", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
