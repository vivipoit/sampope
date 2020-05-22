require 'rails_helper'

RSpec.describe "itineraries/edit", type: :view do
  before(:each) do
    @itinerary = assign(:itinerary, Itinerary.create!(
      subtotal: 1,
      discount: 1,
      total: 1
    ))
  end

  it "renders the edit itinerary form" do
    render

    assert_select "form[action=?][method=?]", itinerary_path(@itinerary), "post" do

      assert_select "input[name=?]", "itinerary[subtotal]"

      assert_select "input[name=?]", "itinerary[discount]"

      assert_select "input[name=?]", "itinerary[total]"
    end
  end
end
