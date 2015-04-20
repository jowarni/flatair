class AddTitleToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :title, :string
  end
end
