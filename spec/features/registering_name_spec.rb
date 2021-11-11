# require 'web_helpers_spec'

feature 'Registering' do
  scenario 'player can register their name' do
    register_name
    expect(page).to have_content('Thank you, Lagertha')
  end  
end