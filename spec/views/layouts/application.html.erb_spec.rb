require 'rails_helper'

RSpec.describe "layouts/application.html.erb", type: :view do


  context 'display' do  
    it '#navbar' do
      render
      expect(rendered).to have_content 'Acceuil'
      expect(rendered).to have_content 'Créer un Event'
      expect(rendered).to have_content "Se Connecter / S'inscrire"
      expect(rendered).to_not have_content 'Welcome on Event Brite !'
      expect(rendered).to_not have_content 'ouiiiiiiiiii'
      expect(rendered).to_not have_content 'Coucou!'
    end
  end

end