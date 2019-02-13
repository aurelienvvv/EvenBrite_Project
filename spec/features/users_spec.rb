require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'create new user' do
    scenario 'should be successful' do
      visit new_user_registration_path
      within('form') do
        fill_in 'Email', with: 'Jean'
        fill_in 'Password', with: 'aaaaaa'
        fill_in 'Password confirmation', with: 'aaaaaa'
      end
      click_button 'Sign up'
    end


    scenario 'should fail without email' do
    visit new_user_registration_path
      within('form') do
        fill_in 'Email', with: 'Jean'
        fill_in 'Password', with: 'aaaaaa'
      end
      click_button 'Sign up'
      expect(page).to have_content('Email is invalid')
      expect(page).to have_content('Se Connecter / S\'inscrire')
    end
  end


  context 'display button join event' do
  scenario 'should not display with no connexion' do
    visit events_path
  end
end

end
