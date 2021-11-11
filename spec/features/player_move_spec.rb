# require 'web_helpers_spec'

feature 'Player makes a move' do
  scenario 'player is offered a choice of rock or paper' do
    
    register_name
    expect(page).to have_content('Make your move: Rock or Paper')
  end

  scenario 'player\'s choice is acknowledged' do
    register_name
    click_button 'Rock'
    expect(page).to have_content 'Lagertha\'s move: Rock' 
  end

end