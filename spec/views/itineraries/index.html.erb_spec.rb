require 'rails_helper'

RSpec.describe "itineraries/index", type: :view do
  before(:each) do
    assign(:itineraries, [
      Itinerary.create!(
        subtotal: 2,
        discount: 3,
        total: 4
      ),
      Itinerary.create!(
        subtotal: 2,
        discount: 3,
        total: 4
      )
    ])
  end

  it "renders a list of itineraries" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
