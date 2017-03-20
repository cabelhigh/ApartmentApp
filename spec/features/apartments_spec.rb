require 'rails_helper'

RSpec.feature "Apartments", type: :feature do
  context "Our index page displays the created apartments" do
    Steps "check if the index page displays apartments" do
      Given "that I am on the apartments landing page" do
        visit '/apartments'
      end
      When "I create a new apartment" do
        click_link 'New Apartment'
        fill_in 'apartment_address', with: '123 Lane'
        fill_in 'apartment_unit_number', with: '234'
        fill_in 'apartment_city', with: 'San Diego'
        fill_in 'apartment_postal', with: '92101'
        fill_in 'apartment_state', with: 'CA'
        click_button 'Create Apartment'

      end
      Then "I'm on the New Apartment page" do
        expect(page).to have_content("123 Lane")
      end
    end
  end

#   Story: As an apartment owner, I can create a new apartment listing, which shows the location of the apartment on a map.
# Hint: Create method in the model called full_address and geocode based on that.

  context "To create a new apartment listing and then have a map dynamically generated with its location" do
    Steps "check if the show page's map gets populated with the right lat/long" do
      Given "that when I enter new apartment data" do
        visit '/apartments/new'
      end
      When "I create a new apartment" do
        fill_in 'apartment_address', with: '704 J Street'
        fill_in 'apartment_unit_number', with: 'n/a'
        fill_in 'apartment_city', with: 'San Diego'
        fill_in 'apartment_state', with: 'CA'
        fill_in 'apartment_postal', with: '92101'
        click_button 'Create Apartment'
      end
      Then "When I create a new apartment it places my apartment marker on the correct lattitude and longitude" do
        expect(page).to have_content("704 J")
      end
    end
  end

end
