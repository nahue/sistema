# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100221172423) do

  create_table "tb_doctipos", :id => false, :force => true do |t|
    t.integer "id_doctipo"
    t.string  "ds_descripcion", :limit => 20
    t.boolean "ds_habilitado"
  end

  create_table "tb_documentos", :primary_key => "id_documento", :force => true do |t|
    t.integer "id_doctipo"
    t.integer "id_area"
    t.integer "id_usuariocreacion"
    t.integer "id_usuariofirma"
    t.integer "id_docprioridad"
    t.integer "id_docprivacidad"
    t.string  "doc_descripcion",    :limit => 20
    t.binary  "doc_adjunto"
    t.text    "doc_contenido"
    t.boolean "doc_habilitado"
    t.integer "id_docvisibilidad"
  end

  create_table "tb_plantillas", :primary_key => "id_plantilla", :force => true do |t|
    t.string  "pl_codigo",      :limit => 10
    t.string  "pl_descripcion", :limit => 20
    t.text    "pl_plantilla"
    t.boolean "pl_habilitado"
  end

  add_index "tb_plantillas", ["pl_codigo"], :name => "pl_codigo", :unique => true

  create_table "usuarios", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
