class CreateMuscleJointsBoneSystems < ActiveRecord::Migration
  def change
    create_table :muscle_joints_bone_systems do |t|
      t.boolean :numbness
      t.boolean :jointpain
      t.boolean :muscleweakness
      t.boolean :jointswelling
      t.integer :patientID

      t.timestamps
    end
  end
end
