def register_name # there must be a better way to do this
  visit '/'
  fill_in :name, with: 'Lagertha'
  click_button 'Submit'
end