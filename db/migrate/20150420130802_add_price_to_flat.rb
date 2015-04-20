class AddPriceToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :price, :integer
  end
end
