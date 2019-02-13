require 'rails_helper'

RSpec.describe "events/show.html.erb", type: :view do
=begin
context 'when there are events' do  
  it 'displays the details' do
    # déclare la variable cities, qui est une array contenant des villes
    assign(:events,
      [
        build(:event, title: "Coucou Party"),
        build(:event, description: "Un super event pour qu'on se dise tous coucou ! Coucou"),
        build(:event),
        build(:event)
      ]
    )

    render

    # vérifie que le name d'une des villes soit affiché
    #expect(rendered).to match /Coucou Party/

    # vérifie que le zip_code d'une ville soit affiché
    #expect(rendered).to match /Un super event pour qu'on se dise tous coucou ! Coucou/
  end
end
=end
end
