require 'spec_helper'

feature 'Choose move' do

  scenario 'A player can choose Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose Rock') 
  end

  scenario 'A player can choose Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You chose Paper') 
  end

  scenario 'A player can choose Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('You chose Scissors') 
  end

  scenario 'Computer chooses random move' do
    allow(game).to receive(:computer_move).and_return('Rock')
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computor chose Rock')
  end
end