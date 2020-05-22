require 'rails_helper'

RSpec.describe "itineraries/show", type: :view do
  before(:each) do
    @itinerary = assign(:itinerary, Itinerary.create!(
      subtotal: 2,
      discount: 3,
      total: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
