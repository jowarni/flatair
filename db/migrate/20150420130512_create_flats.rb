class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|

      t.timestamps null: false
    end
  end
end
