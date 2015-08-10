require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe 'parcel path', {type: :feature} do
  it 'takes user inputed dimensions and weight and shows cost to ship on results page' do
    visit '/'
    fill_in 'height', with: 2
    fill_in 'depth', with: 2
    fill_in 'width', with: 2
    fill_in 'weight', with: 10
    fill_in 'distance', with: 110
    click_button 'Submit'
    expect(page).to have_content 50
  end
end
