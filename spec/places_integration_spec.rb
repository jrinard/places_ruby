require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The places path', {:type => :feature}) do
  it ('returns location')do
    visit('/')
    fill_in('location', :with => 'vancouver')
    click_button('Save Place')
    click_link('Back')
    expect(page).to have_content('vancouver')
  end
end

describe('The delete path', {:type => :feature}) do
  it ('deletes a location') do
    visit('/')
    fill_in('location', :with => 'vancouver')
    click_button('Save Place')
    click_link('Back')
    fill_in('location', :with => 'Portland')
    click_button('Save Place')
    click_link('Back')
    fill_in('dlocation', :with => 'vancouver')
    click_button('Delete Place')
    click_link('Back')
    expect(page).to have_content('Portland')
  end
end
