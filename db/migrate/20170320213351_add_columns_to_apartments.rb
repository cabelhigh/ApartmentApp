class AddColumnsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :street1, :string
    add_column :apartments, :street2, :string
    add_column :apartments, :city, :string
    add_column :apartments, :postal, :string
    add_column :apartments, :state, :string
    add_column :apartments, :country, :string
    add_column :apartments, :name, :string
    add_column :apartments, :phone_number, :string
    add_column :apartments, :opens_at, :time
    add_column :apartments, :closes_at, :time
  end
end
