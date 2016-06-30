require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('change maker',{:type => :feature}) do
  it "takes a number and returns the same value in change" do
    visit('/')
    fill_in('input',:with => 0.85)
    click_button('Submit')
    expect(page).to have_content("3 quarters 1 dime")
  end
end
