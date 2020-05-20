# spec/features/user_edits_item_spec.rb

require 'rails_helper'

feature 'user edits item' do
  scenario 'sucessfully' do
    Item.create(name: 'example', price: 1)

    visit items_path
    click_on 'Edit'
    fill_in 'Name', with: 'changed'
    fill_in 'Price', with: 2
    click_on 'Update Item'

    expect(page).to have_content 'Item was successfully updated.'
    expect(page).to have_content 'Name: changed'
    expect(page).to have_content 'Price: 2'
  end
end
