require 'rails_helper'

RSpec.describe "itineraries/new", type: :view do
  before(:each) do
    assign(:itinerary, Itinerary.new(
      subtotal: 1,
      discount: 1,
      total: 1
    ))
  end

  it "renders new itinerary form" do
    render

    assert_select "form[action=?][method=?]", itineraries_path, "post" do

      assert_select "input[name=?]", "itinerary[subtotal]"

      assert_select "input[name=?]", "itinerary[discount]"

      assert_select "input[name=?]", "itinerary[total]"
    end
  end
end
