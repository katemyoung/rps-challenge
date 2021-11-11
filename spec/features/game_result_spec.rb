# require 'web_helpers_spec'

feature 'Player wins, loses or draws' do
  let(:computer_move) { 'Rock' }
  scenario 'player wins with paper' do
    pending
    register_name
    click_button 'Paper'
    expect(page).to have_content('Lagertha wins!')
  end

end

# Would you want feature tests here for each scenario? 
