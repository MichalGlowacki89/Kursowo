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

ActiveRecord::Schema.define(version: 20170111114340) do

  create_table "grupas", force: true do |t|
    t.integer  "kurs_id"
    t.integer  "uzytkownik_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kursies", force: true do |t|
    t.string   "nazwa"
    t.integer  "cena_w_zl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kursy_zamowienies", force: true do |t|
    t.integer  "zamowienie_id"
    t.integer  "kursy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uzytkowniks", force: true do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "login"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zamowienies", force: true do |t|
    t.string   "uzytkownik_id"
    t.integer  "wartosc_w_zl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
