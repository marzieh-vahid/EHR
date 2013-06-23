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

ActiveRecord::Schema.define(:version => 20130607141640) do

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

  create_table "ear_systems", :force => true do |t|
    t.boolean  "ringinginears"
    t.boolean  "lossofhearing"
    t.integer  "patientID"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ears", :force => true do |t|
    t.integer  "patientID"
    t.boolean  "ringinginears"
    t.boolean  "lossofhearing"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "earsystems", :force => true do |t|
    t.integer  "patient_id"
    t.boolean  "ringingears"
    t.boolean  "lossofhearing"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "eye_systems", :force => true do |t|
    t.boolean  "pain"
    t.boolean  "redness"
    t.boolean  "lossofvision"
    t.boolean  "doubleorblurredvision"
    t.boolean  "dryness"
    t.integer  "patientID"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "eyes", :force => true do |t|
    t.boolean  "pain"
    t.boolean  "redness"
    t.boolean  "lossofvision"
    t.boolean  "doubleorblurredvision"
    t.boolean  "dryness"
    t.integer  "patientID"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "eyesystems", :force => true do |t|
    t.integer  "patient_id"
    t.boolean  "pain"
    t.boolean  "dryness"
    t.boolean  "redness"
    t.boolean  "lossofvision"
    t.boolean  "doubleorblurredvision"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "generals", :force => true do |t|
    t.boolean  "weightgain"
    t.boolean  "weightloss"
    t.boolean  "fatigue"
    t.boolean  "weakness"
    t.boolean  "fever"
    t.boolean  "nightsweats"
    t.integer  "patientID"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "histories", :force => true do |t|
    t.integer  "patientID"
    t.boolean  "hospitalization"
    t.boolean  "surgery"
    t.boolean  "bloodtransfusion"
    t.text     "accidents"
    t.text     "allergies"
    t.boolean  "smoking"
    t.boolean  "alcohol"
    t.boolean  "vaccination"
    t.boolean  "ppd"
    t.boolean  "papsmear"
    t.boolean  "mammography"
    t.boolean  "fecaloccultblood"
    t.text     "othertests"
    t.text     "occupationalhistory"
    t.boolean  "animalcontact"
    t.text     "medicalhistoryofthefamily"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "muscle_joints_bone_systems", :force => true do |t|
    t.boolean  "numbness"
    t.boolean  "jointpain"
    t.boolean  "muscleweakness"
    t.boolean  "jointswelling"
    t.integer  "patientID"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "muscle_joints_bones", :force => true do |t|
    t.boolean  "numbness"
    t.boolean  "jointpain"
    t.boolean  "muscleweakness"
    t.boolean  "jointswelling"
    t.integer  "patientID"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "muscles", :force => true do |t|
    t.integer  "patientID"
    t.boolean  "jointpain"
    t.boolean  "jointswelling"
    t.boolean  "muscleweakness"
    t.boolean  "numbness"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "nerves", :force => true do |t|
    t.boolean  "headaches"
    t.boolean  "dizziness"
    t.boolean  "faintingorlossofconsciousness"
    t.boolean  "numbnessortingling"
    t.boolean  "memoryloss"
    t.integer  "patientID"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "nervous", :force => true do |t|
    t.boolean  "headaches"
    t.boolean  "dizziness"
    t.boolean  "faintingorlossofconsciousness"
    t.boolean  "numbnessortingling"
    t.boolean  "memoryloss"
    t.integer  "patientID"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

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

  create_table "patients", :force => true do |t|
    t.integer  "patientID"
    t.string   "name"
    t.string   "family"
    t.string   "fathername"
    t.string   "gender"
    t.integer  "mellicode"
    t.date     "birthdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "doctor_id"
  end

  create_table "pezeshks", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.string   "email"
    t.integer  "pid"
    t.string   "pass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "psychiatrics", :force => true do |t|
    t.boolean  "depression"
    t.boolean  "excessivewories"
    t.boolean  "difficultyfallingasleep"
    t.boolean  "difficultystayingasleep"
    t.boolean  "difficultieswithsexualarousal"
    t.boolean  "poorappetite"
    t.boolean  "foodcravings"
    t.boolean  "freguuentcrying"
    t.boolean  "sensitivity"
    t.boolean  "thoughtsofsuicide"
    t.boolean  "stress"
    t.boolean  "irritability"
    t.boolean  "poorconcentration"
    t.boolean  "racingthoughts"
    t.boolean  "hallucinations"
    t.boolean  "rapidspeech"
    t.boolean  "guiltythoughts"
    t.boolean  "paranoia"
    t.boolean  "moodswings"
    t.boolean  "anxiety"
    t.boolean  "riskybehavior"
    t.integer  "patientID"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "skins", :force => true do |t|
    t.boolean  "redness"
    t.boolean  "rash"
    t.boolean  "nodules"
    t.boolean  "hairloss"
    t.boolean  "colorchangesofhandssorfeed"
    t.integer  "patientID"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
