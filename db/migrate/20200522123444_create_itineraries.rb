class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.integer :subtotal
      t.integer :discount
      t.integer :total

      t.timestamps
    end
  end
end
