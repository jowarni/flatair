class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :arrival
      t.date :departure
      t.boolean :accepted
      t.references :user, index: true, foreign_key: true
      t.references :flat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
