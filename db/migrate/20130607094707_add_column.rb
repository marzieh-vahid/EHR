class AddColumn < ActiveRecord::Migration
  def up



 add_column :patients, :doctorid, :integer

  end

  def down
  end
end
