class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :neme
      t.string :family
      t.integer :pid
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
