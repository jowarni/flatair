class AddZipCodeToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :zip_code, :integer
  end
end
