class CreateEarSystems < ActiveRecord::Migration
  def change
    create_table :ear_systems do |t|
      t.boolean :ringinginears
      t.boolean :lossofhearing
      t.integer :patientID

      t.timestamps
    end
  end
end
