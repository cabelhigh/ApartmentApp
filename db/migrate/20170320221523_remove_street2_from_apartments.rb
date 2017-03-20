class RemoveStreet2FromApartments < ActiveRecord::Migration
  def change
    remove_column :apartments, :street2, :string
  end
end
