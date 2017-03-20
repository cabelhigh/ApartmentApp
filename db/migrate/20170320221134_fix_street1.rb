class FixStreet1 < ActiveRecord::Migration
  def change
    rename_column :apartments, :street1, :unit_number
  end
end
