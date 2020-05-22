# app/models/itinerary.rb

class Itinerary < ApplicationRecord
  before_save :assign_total

  def assign_total
    self.total = subtotal - discount
  end
end
