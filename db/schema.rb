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

ActiveRecord::Schema.define(:version => 20130603104144) do

  create_table "Doctors", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.integer  "pid"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "Doctors", ["email"], :name => "index_doctors_on_email", :unique => true
  add_index "Doctors", ["pid"], :name => "index_doctors_on_pid", :unique => true
  add_index "Doctors", ["remember_token"], :name => "index_doctors_on_remember_token"

  create_table "patient_idents", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.string   "fathername"
    t.integer  "mellicode"
    t.integer  "daybirth"
    t.integer  "monthbirth"
    t.integer  "yearbirth"
    t.string   "gender"
    t.integer  "patientID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "doctorid"
  end

  add_index "patient_idents", ["mellicode"], :name => "index_patient_idents_on_mellicode", :unique => true
  add_index "patient_idents", ["patientID"], :name => "index_patient_idents_on_patientID", :unique => true

  create_table "pezeshks", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.string   "email"
    t.integer  "pid"
    t.string   "pass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
