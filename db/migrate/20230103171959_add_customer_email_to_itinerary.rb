# db/migrate/20230103171959_add_customer_email_to_itinerary.rb

class AddCustomerEmailToItinerary < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :customer_email, :string
  end
end
