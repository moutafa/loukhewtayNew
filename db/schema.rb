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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120401172032) do

  create_table "categorie_endroits", :force => true do |t|
    t.string   "libelle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categorie_events", :force => true do |t|
    t.string   "libelle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "endroits", :force => true do |t|
    t.string   "nom"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "categorie_endroit_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "evenements", :force => true do |t|
    t.string   "nom"
    t.text     "description"
    t.datetime "date"
    t.string   "frequence"
    t.string   "confidentialite"
    t.integer  "endroit_id"
    t.string   "categorie_event_id"
    t.string   "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "prenom"
    t.string   "nom"
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "salt"
    t.string   "idfacebook"
  end

end
