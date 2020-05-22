# spec/models/itinerary_spec.rb

require 'rails_helper'

describe Itinerary do
  it 'saves total' do
    itinerary = Itinerary.create(subtotal: 5, discount: 3)

    expect(itinerary.total).to eq 2
  end
end
