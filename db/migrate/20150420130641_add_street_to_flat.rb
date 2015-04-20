class AddStreetToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :street, :string
  end
end
