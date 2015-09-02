require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find_and_replace path', {:type => :feature}) do
  it('processes user input and returns sentence with character passages replaced') do
    visit('/')
    fill_in('sentence', :with => 'The cat jumped off of the cathedral')
    fill_in('find', :with => 'cat')
    fill_in('replace', :with => 'dromedary')
    click_button('Replace')
    expect(page).to(have_content('The dromedary jumped off of the dromedaryhedral'))
  end
end 