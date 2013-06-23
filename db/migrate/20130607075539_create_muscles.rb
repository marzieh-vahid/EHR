class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.integer :patientID
      t.boolean :jointpain
      t.boolean :jointswelling
      t.boolean :muscleweakness
      t.boolean :numbness

      t.timestamps
    end
  end
end
