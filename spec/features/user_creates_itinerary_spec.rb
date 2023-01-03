# spec/features/user_creates_itinerary_spec.rb

require 'rails_helper'

feature 'user creates itinerary' do
  scenario 'sucessfully' do
    visit itineraries_path
    click_on 'New Itinerary'
    fill_in 'Customer email', with: 'customer@email.com'
    fill_in 'Subtotal', with: 10
    fill_in 'Discount', with: 5
    click_on 'Create Itinerary'

    expect(page).to have_content 'Itinerary was successfully created.'
    expect(page).to have_content 'Customer email: customer@email.com'
    expect(page).to have_content 'Subtotal: 10'
    expect(page).to have_content 'Discount: 5'
  end
end
