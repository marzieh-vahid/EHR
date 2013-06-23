class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :patientID
      t.string :name
      t.string :family
      t.string :fathername
      t.string :gender
      t.integer :mellicode
      t.date :birthdate

      t.timestamps
    end
  end
end
