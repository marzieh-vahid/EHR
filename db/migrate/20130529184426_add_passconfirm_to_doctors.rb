class AddPassconfirmToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :passconfirm, :string
  end
end
