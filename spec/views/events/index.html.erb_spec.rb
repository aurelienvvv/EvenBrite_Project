require 'rails_helper'

RSpec.describe "events/index.html.erb", type: :view do

  context 'say "Bienvenue sur Event Brite !"' do  
    it 'should display' do
      render
      expect(rendered).to have_content 'Bienvenue sur Event Brite !'
      expect(rendered).to_not have_content 'Welcome on Event Brite !'
      expect(rendered).to_not have_content 'Coucou'
      expect(rendered).to_not have_content 'Bonjour'
    end
  end


end