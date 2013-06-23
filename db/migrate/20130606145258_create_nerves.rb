class CreateNerves < ActiveRecord::Migration
  def change
    create_table :nerves do |t|
      t.boolean :headaches
      t.boolean :dizziness
      t.boolean :faintingorlossofconsciousness
      t.boolean :numbnessortingling
      t.boolean :memoryloss
      t.integer :patientID

      t.timestamps
    end
  end
end
