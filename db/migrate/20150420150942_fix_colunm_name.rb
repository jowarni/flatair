class FixColunmName < ActiveRecord::Migration
  def change
    rename_column :flats, :type, :kind
  end
end
