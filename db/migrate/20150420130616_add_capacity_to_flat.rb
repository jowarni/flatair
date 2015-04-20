class AddCapacityToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :capacity, :integer
  end
end
