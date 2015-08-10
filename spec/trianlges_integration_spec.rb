require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of triangle', {:type => :feature}) do
    it('what it does') do
        visit('/')
        fill_in('side1', :with => 6)
        fill_in('side2', :with => 7)
        fill_in('side3', :with => 5)
        click_button('Triangulate Me')
        expect(page).to have_content('scalene')
    end
end
